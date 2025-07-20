set terminal pdfcairo size 21,16 enhanced font 'Verdana,12'
set output 'freebsd_d16-rows-cold-4GB-uniform-unscaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 4,4 rowsfirst
set title 'timing (cold) / uniform / eic=0' font 'Verdana Bold,12'
set xrange[0.000789999368000506:100]
set title 'uniform / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/freebsd_d16/uniform/bitmapscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/bitmapscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/bitmapscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/bitmapscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=0'

plot "data/freebsd_d16/uniform/indexscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/indexscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/indexscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/indexscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / indexscan prefetch / eic=0'

plot "data/freebsd_d16/uniform/indexscan/on-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/indexscan/on-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/indexscan/on-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/indexscan/on-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=0'

plot "data/freebsd_d16/uniform/seqscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/seqscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/seqscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/seqscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / uniform / eic=1' font 'Verdana Bold,12'
set xrange[0.000789999368000506:100]
set title 'uniform / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/freebsd_d16/uniform/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=1'

plot "data/freebsd_d16/uniform/indexscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/indexscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/indexscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/indexscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / indexscan prefetch / eic=1'

plot "data/freebsd_d16/uniform/indexscan/on-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/indexscan/on-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/indexscan/on-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/indexscan/on-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=1'

plot "data/freebsd_d16/uniform/seqscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/seqscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/seqscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/seqscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / uniform / eic=16' font 'Verdana Bold,12'
set xrange[0.000789999368000506:100]
set title 'uniform / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/freebsd_d16/uniform/bitmapscan/off-16-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/bitmapscan/off-16-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/bitmapscan/off-16-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/bitmapscan/off-16-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=16'

plot "data/freebsd_d16/uniform/indexscan/off-16-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/indexscan/off-16-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/indexscan/off-16-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/indexscan/off-16-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / indexscan prefetch / eic=16'

plot "data/freebsd_d16/uniform/indexscan/on-16-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/indexscan/on-16-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/indexscan/on-16-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/indexscan/on-16-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=16'

plot "data/freebsd_d16/uniform/seqscan/off-16-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/seqscan/off-16-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/seqscan/off-16-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/seqscan/off-16-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / uniform / eic=64' font 'Verdana Bold,12'
set xrange[0.000789999368000506:100]
set title 'uniform / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/freebsd_d16/uniform/bitmapscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/bitmapscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/bitmapscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/bitmapscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=64'

plot "data/freebsd_d16/uniform/indexscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/indexscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/indexscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/indexscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / indexscan prefetch / eic=64'

plot "data/freebsd_d16/uniform/indexscan/on-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/indexscan/on-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/indexscan/on-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/indexscan/on-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=64'

plot "data/freebsd_d16/uniform/seqscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/seqscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/seqscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/seqscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
