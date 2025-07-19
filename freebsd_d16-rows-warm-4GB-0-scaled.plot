set terminal pdfcairo size 16,36 enhanced font 'Verdana,12'
set output 'freebsd_d16-rows-warm-4GB-0-scaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set title 'timing (warm) / cyclic / eic=0' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0:16781.3]
set title 'cyclic / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/freebsd_d16/cyclic/bitmapscan/off-0-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic/bitmapscan/off-0-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic/bitmapscan/off-0-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/cyclic/bitmapscan/off-0-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic/bitmapscan/off-0-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=0'

plot "data/freebsd_d16/cyclic/indexscan/off-0-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic/indexscan/off-0-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic/indexscan/off-0-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/cyclic/indexscan/off-0-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic/indexscan/off-0-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=0'

plot "data/freebsd_d16/cyclic/seqscan/off-0-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic/seqscan/off-0-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic/seqscan/off-0-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/cyclic/seqscan/off-0-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic/seqscan/off-0-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear / eic=0' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0:5321.734]
set title 'linear / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/freebsd_d16/linear/bitmapscan/off-0-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear/bitmapscan/off-0-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear/bitmapscan/off-0-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear/bitmapscan/off-0-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear/bitmapscan/off-0-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=0'

plot "data/freebsd_d16/linear/indexscan/off-0-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear/indexscan/off-0-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear/indexscan/off-0-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear/indexscan/off-0-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear/indexscan/off-0-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=0'

plot "data/freebsd_d16/linear/seqscan/off-0-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear/seqscan/off-0-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear/seqscan/off-0-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear/seqscan/off-0-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear/seqscan/off-0-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_1 / eic=0' font 'Verdana Bold,12'
set xrange[0.000509999592000326:100]
set yrange[0:20612.628]
set title 'linear\_1 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/freebsd_d16/linear_1/bitmapscan/off-0-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_1/bitmapscan/off-0-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_1/bitmapscan/off-0-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear_1/bitmapscan/off-0-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_1/bitmapscan/off-0-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=0'

plot "data/freebsd_d16/linear_1/indexscan/off-0-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_1/indexscan/off-0-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_1/indexscan/off-0-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear_1/indexscan/off-0-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_1/indexscan/off-0-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=0'

plot "data/freebsd_d16/linear_1/seqscan/off-0-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/linear_1/seqscan/off-0-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/linear_1/seqscan/off-0-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/linear_1/seqscan/off-0-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/linear_1/seqscan/off-0-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / uniform / eic=0' font 'Verdana Bold,12'
set xrange[0.000789999368000506:100]
set yrange[0:43482.937]
set title 'uniform / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/freebsd_d16/uniform/bitmapscan/off-0-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/bitmapscan/off-0-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/bitmapscan/off-0-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/uniform/bitmapscan/off-0-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/bitmapscan/off-0-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=0'

plot "data/freebsd_d16/uniform/indexscan/off-0-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/indexscan/off-0-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/indexscan/off-0-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/uniform/indexscan/off-0-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/indexscan/off-0-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=0'

plot "data/freebsd_d16/uniform/seqscan/off-0-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/uniform/seqscan/off-0-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/uniform/seqscan/off-0-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/freebsd_d16/uniform/seqscan/off-0-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/uniform/seqscan/off-0-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
