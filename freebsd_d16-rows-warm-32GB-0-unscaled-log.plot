set terminal pdfcairo size 16,36 enhanced font 'Verdana,12'
set output 'freebsd_d16-rows-warm-32GB-0-unscaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set title 'timing (warm) / cyclic / eic=0' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set title 'cyclic / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/freebsd_d16/cyclic/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/cyclic/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=0'

plot "data/freebsd_d16/cyclic/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/cyclic/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=0'

plot "data/freebsd_d16/cyclic/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/cyclic/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_1 / eic=0' font 'Verdana Bold,12'
set xrange[0.000759999392000486:100]
set title 'cyclic\_1 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/freebsd_d16/cyclic_1/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/cyclic_1/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=0'

plot "data/freebsd_d16/cyclic_1/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/cyclic_1/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=0'

plot "data/freebsd_d16/cyclic_1/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/cyclic_1/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_10 / eic=0' font 'Verdana Bold,12'
set xrange[0.000439999648000282:100]
set title 'cyclic\_10 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/freebsd_d16/cyclic_10/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_10/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_10/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/cyclic_10/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_10/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan / eic=0'

plot "data/freebsd_d16/cyclic_10/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_10/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_10/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/cyclic_10/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_10/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / seqscan / eic=0'

plot "data/freebsd_d16/cyclic_10/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_10/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_10/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/cyclic_10/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_10/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_25 / eic=0' font 'Verdana Bold,12'
set xrange[0.000349999720000224:100]
set title 'cyclic\_25 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/freebsd_d16/cyclic_25/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_25/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_25/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/cyclic_25/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_25/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_25 / indexscan / eic=0'

plot "data/freebsd_d16/cyclic_25/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_25/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_25/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/cyclic_25/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_25/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_25 / seqscan / eic=0'

plot "data/freebsd_d16/cyclic_25/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_25/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_25/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/cyclic_25/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_25/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear / eic=0' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set title 'linear / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/freebsd_d16/linear/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=0'

plot "data/freebsd_d16/linear/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=0'

plot "data/freebsd_d16/linear/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_1 / eic=0' font 'Verdana Bold,12'
set xrange[0.000509999592000326:100]
set title 'linear\_1 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/freebsd_d16/linear_1/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_1/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_1/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear_1/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_1/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=0'

plot "data/freebsd_d16/linear_1/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_1/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_1/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear_1/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_1/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=0'

plot "data/freebsd_d16/linear_1/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_1/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_1/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear_1/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_1/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_10 / eic=0' font 'Verdana Bold,12'
set xrange[0.00049999960000032:100]
set title 'linear\_10 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/freebsd_d16/linear_10/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear_10/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=0'

plot "data/freebsd_d16/linear_10/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear_10/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=0'

plot "data/freebsd_d16/linear_10/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_10/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_10/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear_10/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_10/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_25 / eic=0' font 'Verdana Bold,12'
set xrange[0.000459999632000294:100]
set title 'linear\_25 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/freebsd_d16/linear_25/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_25/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_25/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear_25/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_25/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_25 / indexscan / eic=0'

plot "data/freebsd_d16/linear_25/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_25/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_25/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear_25/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_25/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / seqscan / eic=0'

plot "data/freebsd_d16/linear_25/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_25/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_25/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear_25/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_25/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / uniform / eic=0' font 'Verdana Bold,12'
set xrange[0.000789999368000506:100]
set title 'uniform / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/freebsd_d16/uniform/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/uniform/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=0'

plot "data/freebsd_d16/uniform/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/uniform/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=0'

plot "data/freebsd_d16/uniform/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/uniform/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
