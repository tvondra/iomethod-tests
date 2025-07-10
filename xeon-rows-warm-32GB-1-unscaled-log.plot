set terminal pdfcairo size 16,36 enhanced font 'Verdana,12'
set output 'xeon-rows-warm-32GB-1-unscaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set title 'timing (warm) / cyclic / eic=1' font 'Verdana Bold,12'
set xrange[0.001:100]
set title 'cyclic / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/cyclic/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=1'

plot "data/xeon/cyclic/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=1'

plot "data/xeon/cyclic/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.00064:100]
set title 'cyclic\_1 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/cyclic_1/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_1/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_1/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_1/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_1/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=1'

plot "data/xeon/cyclic_1/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_1/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_1/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_1/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_1/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=1'

plot "data/xeon/cyclic_1/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_1/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_1/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_1/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_1/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_10 / eic=1' font 'Verdana Bold,12'
set xrange[0.00052:100]
set title 'cyclic\_10 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/cyclic_10/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_10/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_10/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_10/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_10/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan / eic=1'

plot "data/xeon/cyclic_10/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_10/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_10/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_10/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_10/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / seqscan / eic=1'

plot "data/xeon/cyclic_10/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_10/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_10/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_10/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_10/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
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
set title 'timing (warm) / linear / eic=1' font 'Verdana Bold,12'
set xrange[0.001:100]
set title 'linear / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/linear/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=1'

plot "data/xeon/linear/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=1'

plot "data/xeon/linear/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.00068:100]
set title 'linear\_1 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/linear_1/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_1/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_1/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_1/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_1/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=1'

plot "data/xeon/linear_1/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_1/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_1/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_1/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_1/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=1'

plot "data/xeon/linear_1/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_1/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_1/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_1/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_1/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_10 / eic=1' font 'Verdana Bold,12'
set xrange[0.0003:100]
set title 'linear\_10 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/linear_10/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_10/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_10/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_10/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_10/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=1'

plot "data/xeon/linear_10/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_10/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_10/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_10/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_10/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=1'

plot "data/xeon/linear_10/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_10/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_10/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_10/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_10/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_25 / eic=1' font 'Verdana Bold,12'
set xrange[0.0004:100]
set title 'linear\_25 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/linear_25/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_25 / indexscan / eic=1'

plot "data/xeon/linear_25/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / seqscan / eic=1'

plot "data/xeon/linear_25/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_25/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_25/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_25/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_25/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / uniform / eic=1' font 'Verdana Bold,12'
set xrange[0.00085:100]
set title 'uniform / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/uniform/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/uniform/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/uniform/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/uniform/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/uniform/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=1'

plot "data/xeon/uniform/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/uniform/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/uniform/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/uniform/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/uniform/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=1'

plot "data/xeon/uniform/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/uniform/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/uniform/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/uniform/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/uniform/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
