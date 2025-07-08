set terminal pdfcairo size 16,36 enhanced font 'Verdana,12'
set output 'xeon-pages-cold-32GB-0-unscaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set title 'timing (cold) / cyclic / eic=0' font 'Verdana Bold,12'
set xrange[0.0179999856000115:100]
set title 'cyclic / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/xeon/cyclic/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=0'

plot "data/xeon/cyclic/indexscan/off-0-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic/indexscan/off-0-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic/indexscan/off-0-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic/indexscan/off-0-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=0'

plot "data/xeon/cyclic/seqscan/off-0-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/cyclic/seqscan/off-0-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/cyclic/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/cyclic/seqscan/off-0-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/cyclic/seqscan/off-0-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"
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
set title 'timing (cold) / uniform / eic=0' font 'Verdana Bold,12'
set xrange[0.0152999877600098:100]
set title 'uniform / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/xeon/uniform/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/uniform/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/uniform/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/uniform/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/uniform/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=0'

plot "data/xeon/uniform/indexscan/off-0-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/uniform/indexscan/off-0-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/uniform/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/uniform/indexscan/off-0-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/uniform/indexscan/off-0-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=0'

plot "data/xeon/uniform/seqscan/off-0-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/xeon/uniform/seqscan/off-0-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/xeon/uniform/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/xeon/uniform/seqscan/off-0-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/xeon/uniform/seqscan/off-0-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"
