#!/usr/bin/env bash

DB=$1
DATADIR=$2
TIMEOUT=$3
MAXSTEP=10000
NDISTINCT=100000
PATH_OLD=$PATH
BUILDS=/home/tomas/builds/

set -e

# size of the range (number of values), determines selectivity
rm -f test.csv
cnt=0
while /bin/true; do

	delta=$((cnt/2))

	if [[ $delta -lt 1 ]]; then
		delta=1
	elif [[ $delta -gt $MAXSTEP ]]; then
		delta=$MAXSTEP
	fi

	cnt=$((cnt+delta))

	if [[ $cnt -gt $NDISTINCT ]]; then
		break
	fi

	for scan in indexscan bitmapscan seqscan; do

		for prefetch in off on; do

			# index prefetch is only for index-only scans
			if [ "$prefetch" == "on" ] && [ "$scan" != "indexscan" ]; then
				continue
			fi

			#for eic in 0 16 128; do
			for eic in 0 1 16 64; do

				for pg in 17 18; do

					# test all the interesting I/O methods
					for iomethod in worker io_uring sync; do

						# 17 does not have io methods
						if [ "$pg" == "17" ] && [ "$iomethod" != "sync" ]; then
							continue
						fi

						for ioworkers in 3 12; do

							# only 'worker' method supports changing workers
							if [ "$iomethod" != "worker" ] && [ "$ioworkers" != "3" ]; then
								continue
							fi

							#for random_page_cost in 1.25 2 4; do
							for random_page_cost in 4; do

								echo $cnt $scan $prefetch $eic $pg $iomethod $ioworkers $random_page_cost >> test.csv

							done

						done

					done

				done

			done

		done

	done

done

# do a bunch of runs for each selectivity
id=0

for shared_buffers in 32GB 4GB; do

	for dataset in uniform linear cyclic linear_1 cyclic_1 linear_10 cyclic_10 linear_25 cyclic_25; do

		sort -R test.csv > test.random

		while IFS= read -r line; do

			IFS=', ' read -r -a strarray <<< "$line"

			cnt="${strarray[0]}"
			scan="${strarray[1]}"
			prefetch="${strarray[2]}"
			eic="${strarray[3]}"
			pg="${strarray[4]}"
			iomethod="${strarray[5]}"
			ioworkers="${strarray[6]}"
			random_page_cost="${strarray[7]}"

			echo "cnt=$cnt dataset=$dataset scan=$scan prefetch=$prefetch eic=$eic pg=$pg iomethod=$iomethod ioworkers=$ioworkers shared_buffers=$shared_buffers random_page_cost=$random_page_cost"

			id=$((id+1))

			bitmapscan=off;
			indexscan=off;
			seqscan=off;

			if [ "$scan" == "bitmapscan" ]; then
				bitmapscan=on;
			elif [ "$scan" == "indexscan" ]; then
				indexscan=on
			elif [ "$scan" == "seqscan" ]; then
				seqscan=on
			fi

			# set the path to the correct postgres version
			PATH=$BUILDS/$pg/bin:$PATH_OLD

			pg_ctl -D $DATADIR/$pg -l pg-$pg.log start

			# maxval to pick at random
			m=$(($NDISTINCT - $cnt))

			# pick [start,end] so that it's within [0,1000]
			start=$((RANDOM % m))
			end=$((start + cnt))

			# only 18 has io methods
			if [ "$pg" == "18" ]; then
				psql $DB -c "ALTER SYSTEM SET io_method = $iomethod"
				psql $DB -c "ALTER SYSTEM SET io_workers = $ioworkers"
			fi

			psql $DB -c "ALTER SYSTEM SET shared_buffers = '$shared_buffers'"

			# restart the DB, drop caches, so that we have clean starting point
			pg_ctl -D $DATADIR/$pg -l pg.log restart
			sudo ./drop-caches.sh

			tuples_total=$(psql $DB -t -A -c "SELECT reltuples::bigint FROM pg_class WHERE relname = '${dataset}'")
			pages_total=$(psql $DB -t -A -c "SELECT relpages FROM pg_class WHERE relname = '${dataset}'")

			psql $DB > tmp.log 2>&1 <<EOF
SET max_parallel_workers_per_gather = 0;
SET effective_io_concurrency = $eic;
SET enable_indexscan_prefetch = $prefetch;
SET random_page_cost = $random_page_cost;
EXPLAIN (COSTS OFF) SELECT * FROM ${dataset} WHERE a BETWEEN $start AND $end;
EOF

			if [ "$scan" == "bitmapscan" ]; then
				c=$(grep '^ Bitmap Heap Scan' tmp.log | wc -l)
				s='Bitmap Heap Scan'
			elif [ "$scan" == "indexscan" ]; then
				c=$(grep '^ Index Scan' tmp.log | wc -l)
				s='Index Scan'
			elif [ "$scan" == "seqscan" ]; then
				c=$(grep '^ Seq Scan' tmp.log | wc -l)
				s='Seq Scan'
			fi

			if [ "$c" == "1" ]; then
				optimal='yes'
			else
				optimal='no'
			fi

			# run with cold caches
			psql $DB > tmp.log 2>&1 <<EOF
SET max_parallel_workers_per_gather = 0;
SET enable_indexscan = $indexscan;
SET enable_bitmapscan = $bitmapscan;
SET enable_seqscan = $seqscan;
SET effective_io_concurrency = $eic;
SET statement_timeout = $TIMEOUT;
SET random_page_cost = $random_page_cost;
SET enable_indexscan_prefetch = $prefetch;
\timing on
EXPLAIN (ANALYZE, TIMING OFF, SETTINGS ON) SELECT * FROM ${dataset} WHERE a BETWEEN $start AND $end;
EOF

			c=$(grep 'canceling statement' tmp.log | wc -l)

			if [ "$c" == "1" ]; then
				time_uncached="-1"
			else
				time_uncached=$(grep '^Time:' tmp.log | awk '{print $2}')
			fi

			cost=$(grep "$s" tmp.log | sed 's/.*cost=\([^\s]*\)\.\.\([^\s]*\) rows=.*/\2/')

			echo "===== $line / cold =====" >> explains.log
			cat tmp.log >> explains.log

			# run again, with warm caches
			psql $DB > tmp.log 2>&1 <<EOF
SET max_parallel_workers_per_gather = 0;
SET enable_indexscan = $indexscan;
SET enable_bitmapscan = $bitmapscan;
SET enable_seqscan = $seqscan;
SET effective_io_concurrency = $eic;
SET statement_timeout = $TIMEOUT;
SET random_page_cost = $random_page_cost;
SET enable_indexscan_prefetch = $prefetch;
\timing on
EXPLAIN (ANALYZE, TIMING OFF, SETTINGS ON) SELECT * FROM ${dataset} WHERE a BETWEEN $start AND $end;
EOF

			c=$(grep 'canceling statement' tmp.log | wc -l)

			if [ "$c" == "1" ]; then
				time_cached="-1"
			else
				time_cached=$(grep '^Time:' tmp.log | awk '{print $2}')
			fi

			echo "===== $line / warm =====" >> explains.log
			cat tmp.log >> explains.log

			# count matching tuples and pages (condition is random, better get precise result)
			tuples=$(psql $DB -t -A -c "SELECT COUNT(*) FROM ${dataset} WHERE a BETWEEN $start AND $end")
			pages=$(psql $DB -t -A -c "SELECT COUNT(DISTINCT (ctid::text::point)[0]) FROM ${dataset} WHERE a BETWEEN $start AND $end")

			echo $id $cnt $dataset $scan $prefetch $eic $r $pg $iomethod $ioworkers $shared_buffers $random_page_cost $start $end $optimal $tuples_total $tuples $pages_total $pages $cost $time_uncached $time_cached >> results.csv

			pg_ctl -D $DATADIR/$pg -l pg-$pg.log stop

		done < test.random

	done

done
