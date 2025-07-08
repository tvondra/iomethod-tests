set terminal pdfcairo size 16,16 enhanced font 'Verdana,12'
set output 'xeon-pages-cold-32GB-linear-unscaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 4,3 rowsfirst
set title 'timing (cold) / linear / eic=0' font 'Verdana Bold,12'
set xrange[0.00107999913600069:100]
set title 'linear / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/xeon/linear/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=0'

plot "data/xeon/linear/indexscan/off-0-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/indexscan/off-0-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/indexscan/off-0-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/indexscan/off-0-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=0'

plot "data/xeon/linear/seqscan/off-0-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/seqscan/off-0-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/seqscan/off-0-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/seqscan/off-0-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear / eic=1' font 'Verdana Bold,12'
set xrange[0.00107999913600069:100]
set title 'linear / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/xeon/linear/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=1'

plot "data/xeon/linear/indexscan/off-1-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/indexscan/off-1-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/indexscan/off-1-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/indexscan/off-1-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=1'

plot "data/xeon/linear/seqscan/off-1-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/seqscan/off-1-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/seqscan/off-1-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/seqscan/off-1-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear / eic=16' font 'Verdana Bold,12'
set xrange[0.00107999913600069:100]
set title 'linear / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/xeon/linear/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=16'

plot "data/xeon/linear/indexscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/indexscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/indexscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/indexscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=16'

plot "data/xeon/linear/seqscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/seqscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/seqscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/seqscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear / eic=64' font 'Verdana Bold,12'
set xrange[0.00107999913600069:100]
set title 'linear / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/xeon/linear/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=64'

plot "data/xeon/linear/indexscan/off-64-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/indexscan/off-64-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/indexscan/off-64-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/indexscan/off-64-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=64'

plot "data/xeon/linear/seqscan/off-64-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/seqscan/off-64-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/seqscan/off-64-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/seqscan/off-64-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"
