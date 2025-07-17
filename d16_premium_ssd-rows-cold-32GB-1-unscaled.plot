set terminal pdfcairo size 16,36 enhanced font 'Verdana,12'
set output 'd16_premium_ssd-rows-cold-32GB-1-unscaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set title 'timing (cold) / cyclic / eic=1' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set title 'cyclic / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/cyclic/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=1'

plot "data/d16_premium_ssd/cyclic/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=1'

plot "data/d16_premium_ssd/cyclic/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.000530007420103881:100]
set title 'cyclic\_1 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/cyclic_1/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_1/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_1/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_1/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_1/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=1'

plot "data/d16_premium_ssd/cyclic_1/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_1/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_1/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_1/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_1/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=1'

plot "data/d16_premium_ssd/cyclic_1/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_1/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_1/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_1/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_1/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_10 / eic=1' font 'Verdana Bold,12'
set xrange[0.000459999632000294:100]
set title 'cyclic\_10 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/cyclic_10/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_10/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_10/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_10/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_10/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan / eic=1'

plot "data/d16_premium_ssd/cyclic_10/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_10/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_10/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_10/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_10/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / seqscan / eic=1'

plot "data/d16_premium_ssd/cyclic_10/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_10/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_10/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_10/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_10/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear / eic=1' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set title 'linear / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/linear/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=1'

plot "data/d16_premium_ssd/linear/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=1'

plot "data/d16_premium_ssd/linear/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.00049999960000032:100]
set title 'linear\_1 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/linear_1/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_1/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_1/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_1/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_1/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=1'

plot "data/d16_premium_ssd/linear_1/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_1/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_1/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_1/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_1/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=1'

plot "data/d16_premium_ssd/linear_1/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_1/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_1/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_1/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_1/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_10 / eic=1' font 'Verdana Bold,12'
set xrange[0.000459999632000294:100]
set title 'linear\_10 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/linear_10/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_10/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_10/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_10/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_10/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=1'

plot "data/d16_premium_ssd/linear_10/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_10/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_10/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_10/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_10/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=1'

plot "data/d16_premium_ssd/linear_10/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_10/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_10/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_10/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_10/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_25 / eic=1' font 'Verdana Bold,12'
set xrange[0.000480006720094081:100]
set title 'linear\_25 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/linear_25/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_25/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_25/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_25/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_25/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_25 / indexscan / eic=1'

plot "data/d16_premium_ssd/linear_25/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_25/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_25/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_25/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_25/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / seqscan / eic=1'

plot "data/d16_premium_ssd/linear_25/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_25/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_25/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_25/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_25/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / uniform / eic=1' font 'Verdana Bold,12'
set xrange[0.000790011060154842:100]
set title 'uniform / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/uniform/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/uniform/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/uniform/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/uniform/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/uniform/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=1'

plot "data/d16_premium_ssd/uniform/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/uniform/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/uniform/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/uniform/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/uniform/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=1'

plot "data/d16_premium_ssd/uniform/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/uniform/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/uniform/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/uniform/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/uniform/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
