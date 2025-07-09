set terminal pdfcairo size 16,36 enhanced font 'Verdana,12'
set output 'xeon-pages-warm-32GB-16-scaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set title 'timing (warm) / cyclic / eic=16' font 'Verdana Bold,12'
set xrange[0.0179999856000115:100]
set yrange[0:4225.888]
set title 'cyclic / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/cyclic/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=16'

plot "data/xeon/cyclic/indexscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic/indexscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic/indexscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic/indexscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=16'

plot "data/xeon/cyclic/seqscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic/seqscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic/seqscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic/seqscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_1 / eic=16' font 'Verdana Bold,12'
set xrange[0.0115199907840074:100]
set yrange[0:5831.021]
set title 'cyclic\_1 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/cyclic_1/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_1/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_1/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_1/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_1/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=16'

plot "data/xeon/cyclic_1/indexscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_1/indexscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_1/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_1/indexscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_1/indexscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=16'

plot "data/xeon/cyclic_1/seqscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic_1/seqscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic_1/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic_1/seqscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic_1/seqscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear / eic=16' font 'Verdana Bold,12'
set xrange[0.00107999913600069:100]
set yrange[0:3346.897]
set title 'linear / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/linear/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=16'

plot "data/xeon/linear/indexscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/indexscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/indexscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/indexscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=16'

plot "data/xeon/linear/seqscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear/seqscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear/seqscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear/seqscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_1 / eic=16' font 'Verdana Bold,12'
set xrange[0.0122399902080078:100]
set yrange[0:5885.538]
set title 'linear\_1 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/linear_1/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_1/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_1/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_1/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_1/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=16'

plot "data/xeon/linear_1/indexscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_1/indexscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_1/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_1/indexscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_1/indexscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=16'

plot "data/xeon/linear_1/seqscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_1/seqscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_1/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_1/seqscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_1/seqscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_10 / eic=16' font 'Verdana Bold,12'
set xrange[0.00899999280000576:100]
set yrange[0:7220.23]
set title 'linear\_10 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/linear_10/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_10/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_10/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_10/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_10/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=16'

plot "data/xeon/linear_10/indexscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_10/indexscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_10/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_10/indexscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_10/indexscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=16'

plot "data/xeon/linear_10/seqscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/linear_10/seqscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/linear_10/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/linear_10/seqscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/linear_10/seqscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / uniform / eic=16' font 'Verdana Bold,12'
set xrange[0.0152999877600098:100]
set yrange[0:9477.422]
set title 'uniform / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/xeon/uniform/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/uniform/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/uniform/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/uniform/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/uniform/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=16'

plot "data/xeon/uniform/indexscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/uniform/indexscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/uniform/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/uniform/indexscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/uniform/indexscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=16'

plot "data/xeon/uniform/seqscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/xeon/uniform/seqscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/uniform/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/uniform/seqscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/uniform/seqscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"
