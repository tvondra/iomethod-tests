#!/usr/bin/env bash

MACHINES="xeon"

rm -Rf data
mkdir data

rm -f scans.db
rm -f *.pdf *.plot

sqlite3 scans.db <<EOF
create table results_xeon (seq int, cnt int, dataset text, scan text, prefetch text, eic int, version int, io_method text, io_workers int, shared_buffers text, random_page_cost text, start_val int, end_val int, optimal text, total_rows int, rows int, total_pages int, pages int, cost numeric, timing_cold numeric, timing_warm numeric);
EOF

sqlite3 scans.db <<EOF
.mode csv
.separator ' '
.import results-xeon.csv results_xeon
EOF

sqlite3 scans.db <<EOF
create index idx2 on results_xeon (dataset,scan,prefetch,eic,io_method,io_workers,shared_buffers,random_page_cost);
analyze;
EOF

for m in $MACHINES; do

	rm -f tmp.data

	mkdir data/$m

	for sb in 4GB 32GB; do

		sqlite3 scans.db > tmp.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT dataset, scan, prefetch, eic, io_method, io_workers, random_page_cost, version FROM results_${m}
EOF

		while IFS= read -r line; do

			IFS=' ' read -r -a strarray <<< "$line"

			dataset="${strarray[0]}"
			scan="${strarray[1]}"
			prefetch="${strarray[2]}"
			eic="${strarray[3]}"
			iomethod="${strarray[4]}"
			ioworkers="${strarray[5]}"
			randompc="${strarray[6]}"
			version="${strarray[7]}"

			mkdir -p data/$m/$dataset/$scan/

			sqlite3 scans.db > data/$m/$dataset/$scan/$prefetch-$eic-$iomethod-$ioworkers-$sb-$randompc-$version.data <<EOF
.mode tab
SELECT (rows * 100.0 / total_rows), (pages * 100.0 / total_pages), timing_cold, timing_warm, cost FROM results_${m} WHERE dataset = '$dataset' AND scan = '$scan' AND prefetch = '$prefetch' AND eic = $eic AND io_method = '$iomethod' AND io_workers = $ioworkers AND shared_buffers = '$sb' AND random_page_cost = $randompc AND version = $version ORDER BY (rows * 100.0 / total_rows), (pages * 100.0 / total_pages)
EOF

		done < tmp.data

	done

done

for sb in 4GB 32GB; do

	for m in $MACHINES; do

		sqlite3 scans.db > dataset.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT dataset FROM results_${m} WHERE shared_buffers = '$sb' ORDER BY dataset
EOF

		sqlite3 scans.db > prefetch.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT eic FROM results_${m} WHERE shared_buffers = '$sb' ORDER BY eic
EOF

		#for sel in rows pages; do
		for sel in rows; do

			if [ "$sel" == "rows" ]; then
				D="100.0 * rows / total_rows"
				X="1"
			else
				X="2"
				D="100.0 * pages / total_pages"
			fi

			#for cache in cold warm cost; do
			for cache in cold warm; do

				if [ "$cache" == "cold" ]; then
					LABEL="timing (cold)"
					LABEL_Y="duration [ms]"
					C="timing_cold"
					Y="3"
				elif [ "$cache" == "warm" ]; then
					LABEL="timing (warm)"
					LABEL_Y="duration [ms]"
					C="timing_warm"
					Y="4"
				else
					# force cost
					LABEL="cost estimate"
					LABEL_X="cost"
					C="cost"
					Y="5"
				fi

				# scale all charts to same range?
				for scale in scaled unscaled; do

					while IFS= read -r dataset; do

						ds=$(echo $dataset | sed 's/_/\\\\_/')

						sed "s/MACHINE/$m/" plot.template | sed "s/DS/$ds/" | sed "s/DATASET/$dataset/" | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/$scale/" | sed "s/EIC/$eic/" | sed "s/BUFFERS/$sb/" | sed "s/SCALE/$scale/" > $m-$sel-$cache-$sb-$dataset-$scale.plot
						sed "s/MACHINE/$m/" plot-log.template | sed "s/DS/$ds/" | sed "s/DATASET/$dataset/" | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/$scale/" | sed "s/EIC/$eic/" | sed "s/BUFFERS/$sb/" | sed "s/SCALE/$scale/" > $m-$sel-$cache-$sb-$dataset-$scale-log.plot

						while IFS= read -r eic; do

							min=$(sqlite3 scans.db "SELECT MIN($D) FROM results_${m} WHERE dataset = '$dataset' AND pages > 0")
							max=$(sqlite3 scans.db "SELECT MAX($C) FROM results_${m} WHERE dataset = '$dataset'")

							echo "set title '$LABEL / $ds / eic=$eic' font 'Verdana Bold,12'" >> $m-$sel-$cache-$sb-$dataset-$scale.plot
							echo "set title '$LABEL / $ds / eic=$eic' font 'Verdana Bold,12'" >> $m-$sel-$cache-$sb-$dataset-$scale-log.plot

							echo "set xrange[$min:100]" >> $m-$sel-$cache-$sb-$dataset-$scale.plot
							echo "set xrange[$min:100]" >> $m-$sel-$cache-$sb-$dataset-$scale-log.plot

							if [ "$scale" == "scaled" ]; then
								echo "set yrange[0:$max]" >> $m-$sel-$cache-$sb-$dataset-$scale.plot
								echo "set yrange[0.01:$max]" >> $m-$sel-$cache-$sb-$dataset-$scale-log.plot
							fi

							sed "s/MACHINE/$m/" row.template | sed "s/LABEL/$LABEL/" | sed "s/DS/$ds/" | sed "s/DATASET/$dataset/" | sed "s/EIC/$eic/" | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/RPC/$rpc/" | sed "s/BUFFERS/$sb/" >> $m-$sel-$cache-$sb-$dataset-$scale.plot
							sed "s/MACHINE/$m/" row.template | sed "s/LABEL/$LABEL/" | sed "s/DS/$ds/" | sed "s/DATASET/$dataset/" | sed "s/EIC/$eic/" | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/RPC/$rpc/" | sed "s/BUFFERS/$sb/" >> $m-$sel-$cache-$sb-$dataset-$scale-log.plot

						done < prefetch.data

						gnuplot $m-$sel-$cache-$sb-$dataset-$scale.plot
						gnuplot $m-$sel-$cache-$sb-$dataset-$scale-log.plot

					done < dataset.data

				done

			done

		done

	done

done

for sb in 4GB 32GB; do

	for m in $MACHINES; do

		sqlite3 scans.db > dataset.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT dataset FROM results_${m} WHERE shared_buffers = '$sb' ORDER BY dataset
EOF

		sqlite3 scans.db > prefetch.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT eic FROM results_${m} WHERE shared_buffers = '$sb' ORDER BY eic
EOF

		#for sel in rows pages; do
		for sel in rows; do

			if [ "$sel" == "rows" ]; then
				D="100.0 * rows / total_rows"
				X="1"
			else
				X="2"
				D="100.0 * pages / total_pages"
			fi

			#for cache in cold warm cost; do
			for cache in cold warm; do

				if [ "$cache" == "cold" ]; then
					LABEL="timing (cold)"
					LABEL_Y="duration [ms]"
					C="timing_cold"
					Y="3"
				elif [ "$cache" == "warm" ]; then
					LABEL="timing (warm)"
					LABEL_Y="duration [ms]"
					C="timing_warm"
					Y="4"
				else
					# force cost
					LABEL="cost estimate"
					LABEL_X="cost"
					C="cost"
					Y="5"
				fi

				# scale all charts to same range?
				for scale in scaled unscaled; do

					while IFS= read -r eic; do

						sed "s/MACHINE/$m/" plot-eic.template | sed "s/DATASET/$dataset/" | sed "s/DS/$ds/" | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/$scale/" | sed "s/EIC/$eic/" | sed "s/BUFFERS/$sb/" | sed "s/SCALE/$scale/" | sed "s/EIC/$eic/" > $m-$sel-$cache-$sb-$eic-$scale.plot
						sed "s/MACHINE/$m/" plot-eic-log.template | sed "s/DATASET/$dataset/" | sed "s/DS/$ds/" | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/$scale/" | sed "s/EIC/$eic/" | sed "s/BUFFERS/$sb/" | sed "s/SCALE/$scale/" | sed "s/EIC/$eic/" > $m-$sel-$cache-$sb-$eic-$scale-log.plot

						while IFS= read -r dataset; do

							ds=$(echo $dataset | sed 's/_/\\\\_/')

							min=$(sqlite3 scans.db "SELECT MIN($D) FROM results_${m} WHERE dataset = '$dataset' AND pages > 0")
							max=$(sqlite3 scans.db "SELECT MAX($C) FROM results_${m} WHERE dataset = '$dataset'")

							echo "set title '$LABEL / $ds / eic=$eic' font 'Verdana Bold,12'" >> $m-$sel-$cache-$sb-$eic-$scale.plot
							echo "set title '$LABEL / $ds / eic=$eic' font 'Verdana Bold,12'" >> $m-$sel-$cache-$sb-$eic-$scale-log.plot

							echo "set xrange[$min:100]" >> $m-$sel-$cache-$sb-$eic-$scale.plot
							echo "set xrange[$min:100]" >> $m-$sel-$cache-$sb-$eic-$scale-log.plot

							if [ "$scale" == "scaled" ]; then
								echo "set yrange[0:$max]" >> $m-$sel-$cache-$sb-$eic-$scale.plot
								echo "set yrange[0.01:$max]" >> $m-$sel-$cache-$sb-$eic-$scale-log.plot
							fi

							sed "s/MACHINE/$m/" row.template | sed "s/LABEL/$LABEL/" | sed "s/DATASET/$dataset/" | sed "s/DS/$ds/" | sed "s/EIC/$eic/" | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/RPC/$rpc/" | sed "s/BUFFERS/$sb/" >> $m-$sel-$cache-$sb-$eic-$scale.plot
							sed "s/MACHINE/$m/" row.template | sed "s/LABEL/$LABEL/" | sed "s/DATASET/$dataset/" | sed "s/DS/$ds/"  | sed "s/EIC/$eic/" | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/RPC/$rpc/" | sed "s/BUFFERS/$sb/" >> $m-$sel-$cache-$sb-$eic-$scale-log.plot

						done < dataset.data

						gnuplot $m-$sel-$cache-$sb-$eic-$scale.plot
						gnuplot $m-$sel-$cache-$sb-$eic-$scale-log.plot

					done < prefetch.data

				done

			done

		done

	done

done
