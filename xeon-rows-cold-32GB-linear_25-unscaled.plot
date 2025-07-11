set terminal pdfcairo size 21,16 enhanced font 'Verdana,12'
set output 'xeon-rows-cold-32GB-linear_25-unscaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 4,4 rowsfirst
set title 'timing (cold) / linear\\_25 / eic=0' font 'Verdana Bold,12'
set xrange[0.05104:100]
set title 'linear\_25 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/xeon/linear_25/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_25 / indexscan / eic=0'

plot "data/xeon/linear_25/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / indexscan prefetch / eic=0'

plot "data/xeon/linear_25/indexscan/on-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/indexscan/on-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/indexscan/on-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/indexscan/on-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/indexscan/on-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / seqscan / eic=0'

plot "data/xeon/linear_25/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_25 / eic=1' font 'Verdana Bold,12'
set xrange[0.05104:100]
set title 'linear\_25 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/xeon/linear_25/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_25 / indexscan / eic=1'

plot "data/xeon/linear_25/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / indexscan prefetch / eic=1'

plot "data/xeon/linear_25/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / seqscan / eic=1'

plot "data/xeon/linear_25/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_25 / eic=16' font 'Verdana Bold,12'
set xrange[0.05104:100]
set title 'linear\_25 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/xeon/linear_25/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_25 / indexscan / eic=16'

plot "data/xeon/linear_25/indexscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/indexscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/indexscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/indexscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / indexscan prefetch / eic=16'

plot "data/xeon/linear_25/indexscan/on-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/indexscan/on-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/indexscan/on-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/indexscan/on-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/indexscan/on-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / seqscan / eic=16'

plot "data/xeon/linear_25/seqscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/seqscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/seqscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/seqscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_25 / eic=64' font 'Verdana Bold,12'
set xrange[0.05104:100]
set title 'linear\_25 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/xeon/linear_25/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_25 / indexscan / eic=64'

plot "data/xeon/linear_25/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / indexscan prefetch / eic=64'

plot "data/xeon/linear_25/indexscan/on-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/indexscan/on-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/indexscan/on-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/indexscan/on-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/indexscan/on-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / seqscan / eic=64'

plot "data/xeon/linear_25/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
