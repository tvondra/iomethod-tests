set terminal pdfcairo size 16,36 enhanced font 'Verdana,12'
set output 'd16_premium_ssd-rows-cold-4GB-64-scaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set title 'timing (cold) / cyclic / eic=64' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0:32587.221]
set title 'cyclic / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/cyclic/bitmapscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=64'

plot "data/d16_premium_ssd/cyclic/indexscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/indexscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/indexscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/indexscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/indexscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=64'

plot "data/d16_premium_ssd/cyclic/seqscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/seqscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/seqscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/seqscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/seqscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_1 / eic=64' font 'Verdana Bold,12'
set xrange[0.000530007420103881:100]
set yrange[0:31646.686]
set title 'cyclic\_1 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/cyclic_1/bitmapscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_1/bitmapscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_1/bitmapscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_1/bitmapscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_1/bitmapscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=64'

plot "data/d16_premium_ssd/cyclic_1/indexscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_1/indexscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_1/indexscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_1/indexscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_1/indexscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=64'

plot "data/d16_premium_ssd/cyclic_1/seqscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_1/seqscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_1/seqscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_1/seqscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_1/seqscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_10 / eic=64' font 'Verdana Bold,12'
set xrange[0.000459999632000294:100]
set yrange[0:45080.962]
set title 'cyclic\_10 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/cyclic_10/bitmapscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_10/bitmapscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_10/bitmapscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_10/bitmapscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_10/bitmapscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan / eic=64'

plot "data/d16_premium_ssd/cyclic_10/indexscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_10/indexscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_10/indexscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_10/indexscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_10/indexscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / seqscan / eic=64'

plot "data/d16_premium_ssd/cyclic_10/seqscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_10/seqscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_10/seqscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_10/seqscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_10/seqscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_25 / eic=64' font 'Verdana Bold,12'
set xrange[0.000370005180072521:100]
set yrange[0:42584.106]
set title 'cyclic\_25 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/cyclic_25/bitmapscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_25/bitmapscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_25/bitmapscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_25/bitmapscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_25/bitmapscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_25 / indexscan / eic=64'

plot "data/d16_premium_ssd/cyclic_25/indexscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_25/indexscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_25/indexscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_25/indexscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_25/indexscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_25 / seqscan / eic=64'

plot "data/d16_premium_ssd/cyclic_25/seqscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_25/seqscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_25/seqscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_25/seqscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_25/seqscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear / eic=64' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0:29080.149]
set title 'linear / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/linear/bitmapscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear/bitmapscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear/bitmapscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear/bitmapscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear/bitmapscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=64'

plot "data/d16_premium_ssd/linear/indexscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear/indexscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear/indexscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear/indexscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear/indexscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=64'

plot "data/d16_premium_ssd/linear/seqscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear/seqscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear/seqscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear/seqscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear/seqscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_1 / eic=64' font 'Verdana Bold,12'
set xrange[0.00049999960000032:100]
set yrange[0:40855.161]
set title 'linear\_1 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/linear_1/bitmapscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_1/bitmapscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_1/bitmapscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_1/bitmapscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_1/bitmapscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=64'

plot "data/d16_premium_ssd/linear_1/indexscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_1/indexscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_1/indexscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_1/indexscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_1/indexscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=64'

plot "data/d16_premium_ssd/linear_1/seqscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_1/seqscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_1/seqscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_1/seqscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_1/seqscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_10 / eic=64' font 'Verdana Bold,12'
set xrange[0.000459999632000294:100]
set yrange[0:42988.451]
set title 'linear\_10 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/linear_10/bitmapscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_10/bitmapscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_10/bitmapscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_10/bitmapscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_10/bitmapscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=64'

plot "data/d16_premium_ssd/linear_10/indexscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_10/indexscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_10/indexscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_10/indexscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_10/indexscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=64'

plot "data/d16_premium_ssd/linear_10/seqscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_10/seqscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_10/seqscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_10/seqscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_10/seqscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_25 / eic=64' font 'Verdana Bold,12'
set xrange[0.000420005880082321:100]
set yrange[0:42510.687]
set title 'linear\_25 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/linear_25/bitmapscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_25/bitmapscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_25/bitmapscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_25/bitmapscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_25/bitmapscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_25 / indexscan / eic=64'

plot "data/d16_premium_ssd/linear_25/indexscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_25/indexscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_25/indexscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_25/indexscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_25/indexscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / seqscan / eic=64'

plot "data/d16_premium_ssd/linear_25/seqscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_25/seqscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_25/seqscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_25/seqscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_25/seqscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / uniform / eic=64' font 'Verdana Bold,12'
set xrange[0.000730010220143082:100]
set yrange[0:57570.368]
set title 'uniform / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/uniform/bitmapscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/uniform/bitmapscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/uniform/bitmapscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/uniform/bitmapscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/uniform/bitmapscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=64'

plot "data/d16_premium_ssd/uniform/indexscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/uniform/indexscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/uniform/indexscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/uniform/indexscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/uniform/indexscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=64'

plot "data/d16_premium_ssd/uniform/seqscan/off-64-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/uniform/seqscan/off-64-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/uniform/seqscan/off-64-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/uniform/seqscan/off-64-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/uniform/seqscan/off-64-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
