set terminal pdfcairo size 16,36 enhanced font 'Verdana,12'
set output 'ryzen-pages-warm-4GB-1-scaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set title 'timing (warm) / cyclic / eic=1' font 'Verdana Bold,12'
set xrange[0.0179999856000115:100]
set yrange[0:3735.083]
set title 'cyclic / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/cyclic/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=1'

plot "data/ryzen/cyclic/indexscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=1'

plot "data/ryzen/cyclic/seqscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/seqscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/seqscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/seqscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.00647999481600415:100]
set yrange[0:5144.004]
set title 'cyclic\_1 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/cyclic_1/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=1'

plot "data/ryzen/cyclic_1/indexscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/indexscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/indexscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/indexscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=1'

plot "data/ryzen/cyclic_1/seqscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/seqscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/seqscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/seqscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear / eic=1' font 'Verdana Bold,12'
set xrange[0.00107999913600069:100]
set yrange[0:3407.29]
set title 'linear / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/linear/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=1'

plot "data/ryzen/linear/indexscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/indexscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/indexscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/indexscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=1'

plot "data/ryzen/linear/seqscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/seqscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/seqscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/seqscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.00881999294400564:100]
set yrange[0:5164.126]
set title 'linear\_1 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/linear_1/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=1'

plot "data/ryzen/linear_1/indexscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/indexscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/indexscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/indexscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=1'

plot "data/ryzen/linear_1/seqscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/seqscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/seqscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/seqscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_10 / eic=1' font 'Verdana Bold,12'
set xrange[0.00719999424000461:100]
set yrange[0:4909.913]
set title 'linear\_10 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/linear_10/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=1'

plot "data/ryzen/linear_10/indexscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/indexscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/indexscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/indexscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=1'

plot "data/ryzen/linear_10/seqscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/seqscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/seqscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/seqscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / uniform / eic=1' font 'Verdana Bold,12'
set xrange[0.0120599903520077:100]
set yrange[0:8771.254]
set title 'uniform / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/uniform/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=1'

plot "data/ryzen/uniform/indexscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/indexscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/indexscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/indexscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=1'

plot "data/ryzen/uniform/seqscan/off-1-sync-3-4GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/seqscan/off-1-sync-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/seqscan/off-1-worker-3-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/seqscan/off-1-worker-12-4GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"
