set terminal pdfcairo size 16,16 enhanced font 'Verdana,12'
set output 'xeon-rows-warm-32GB-cyclic_25-unscaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 4,3 rowsfirst
set title 'timing (warm) / cyclic\\_25 / eic=0' font 'Verdana Bold,12'
set xrange[0.00054:100]
set title 'cyclic\_25 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/cyclic_25/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_25/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_25/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_25/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_25/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_25 / indexscan / eic=0'

plot "data/xeon/cyclic_25/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_25/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_25/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_25/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_25/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_25 / seqscan / eic=0'

plot "data/xeon/cyclic_25/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_25/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_25/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_25/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_25/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_25 / eic=1' font 'Verdana Bold,12'
set xrange[0.00054:100]
set title 'cyclic\_25 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/cyclic_25/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_25/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_25/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_25/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_25/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_25 / indexscan / eic=1'

plot "data/xeon/cyclic_25/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_25/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_25/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_25/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_25/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_25 / seqscan / eic=1'

plot "data/xeon/cyclic_25/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_25/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_25/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_25/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_25/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_25 / eic=16' font 'Verdana Bold,12'
set xrange[0.00054:100]
set title 'cyclic\_25 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/cyclic_25/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_25/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_25/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_25/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_25/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_25 / indexscan / eic=16'

plot "data/xeon/cyclic_25/indexscan/off-16-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_25/indexscan/off-16-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_25/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_25/indexscan/off-16-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_25/indexscan/off-16-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_25 / seqscan / eic=16'

plot "data/xeon/cyclic_25/seqscan/off-16-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_25/seqscan/off-16-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_25/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_25/seqscan/off-16-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_25/seqscan/off-16-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_25 / eic=64' font 'Verdana Bold,12'
set xrange[0.00054:100]
set title 'cyclic\_25 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/cyclic_25/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_25/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_25/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_25/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_25/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_25 / indexscan / eic=64'

plot "data/xeon/cyclic_25/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_25/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_25/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_25/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_25/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_25 / seqscan / eic=64'

plot "data/xeon/cyclic_25/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_25/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_25/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_25/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_25/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
