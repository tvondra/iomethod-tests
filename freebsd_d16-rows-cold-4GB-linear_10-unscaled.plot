set terminal pdfcairo size 21,16 enhanced font 'Verdana,12'
set output 'freebsd_d16-rows-cold-4GB-linear_10-unscaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 4,4 rowsfirst
set title 'timing (cold) / linear\\_10 / eic=0' font 'Verdana Bold,12'
set xrange[0.00049999960000032:100]
set title 'linear\_10 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/freebsd_d16/linear_10/bitmapscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/bitmapscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/bitmapscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/bitmapscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=0'

plot "data/freebsd_d16/linear_10/indexscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/indexscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/indexscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/indexscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / indexscan prefetch / eic=0'

plot "data/freebsd_d16/linear_10/indexscan/on-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/indexscan/on-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/indexscan/on-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/indexscan/on-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=0'

plot "data/freebsd_d16/linear_10/seqscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/seqscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/seqscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/seqscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_10 / eic=1' font 'Verdana Bold,12'
set xrange[0.00049999960000032:100]
set title 'linear\_10 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/freebsd_d16/linear_10/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=1'

plot "data/freebsd_d16/linear_10/indexscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/indexscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/indexscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/indexscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / indexscan prefetch / eic=1'

plot "data/freebsd_d16/linear_10/indexscan/on-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/indexscan/on-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/indexscan/on-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/indexscan/on-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=1'

plot "data/freebsd_d16/linear_10/seqscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/seqscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/seqscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/seqscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_10 / eic=16' font 'Verdana Bold,12'
set xrange[0.00049999960000032:100]
set title 'linear\_10 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/freebsd_d16/linear_10/bitmapscan/off-16-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/bitmapscan/off-16-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/bitmapscan/off-16-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/bitmapscan/off-16-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=16'

plot "data/freebsd_d16/linear_10/indexscan/off-16-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/indexscan/off-16-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/indexscan/off-16-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/indexscan/off-16-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / indexscan prefetch / eic=16'

plot "data/freebsd_d16/linear_10/indexscan/on-16-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/indexscan/on-16-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/indexscan/on-16-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/indexscan/on-16-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=16'

plot "data/freebsd_d16/linear_10/seqscan/off-16-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/seqscan/off-16-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/seqscan/off-16-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/seqscan/off-16-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_10 / eic=64' font 'Verdana Bold,12'
set xrange[0.00049999960000032:100]
set title 'linear\_10 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/freebsd_d16/linear_10/bitmapscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/bitmapscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/bitmapscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/bitmapscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=64'

plot "data/freebsd_d16/linear_10/indexscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/indexscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/indexscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/indexscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / indexscan prefetch / eic=64'

plot "data/freebsd_d16/linear_10/indexscan/on-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/indexscan/on-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/indexscan/on-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/indexscan/on-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=64'

plot "data/freebsd_d16/linear_10/seqscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/seqscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/seqscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/seqscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
