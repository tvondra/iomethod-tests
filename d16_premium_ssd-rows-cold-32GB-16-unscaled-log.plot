set terminal pdfcairo size 21,36 enhanced font 'Verdana,12'
set output 'd16_premium_ssd-rows-cold-32GB-16-unscaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,4 rowsfirst
set title 'timing (cold) / cyclic / eic=16' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set title 'cyclic / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/cyclic/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=16'

plot "data/d16_premium_ssd/cyclic/indexscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/indexscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/indexscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/indexscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / indexscan prefetch / eic=16'

plot "data/d16_premium_ssd/cyclic/indexscan/on-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/indexscan/on-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/indexscan/on-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/indexscan/on-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/indexscan/on-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=16'

plot "data/d16_premium_ssd/cyclic/seqscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/seqscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/seqscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/seqscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_1 / eic=16' font 'Verdana Bold,12'
set xrange[0.000530007420103881:100]
set title 'cyclic\_1 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/cyclic_1/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_1/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_1/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_1/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_1/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=16'

plot "data/d16_premium_ssd/cyclic_1/indexscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_1/indexscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_1/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_1/indexscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_1/indexscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / indexscan prefetch / eic=16'

plot "data/d16_premium_ssd/cyclic_1/indexscan/on-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_1/indexscan/on-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_1/indexscan/on-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_1/indexscan/on-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_1/indexscan/on-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=16'

plot "data/d16_premium_ssd/cyclic_1/seqscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_1/seqscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_1/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_1/seqscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_1/seqscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_10 / eic=16' font 'Verdana Bold,12'
set xrange[0.000459999632000294:100]
set title 'cyclic\_10 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/cyclic_10/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_10/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_10/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_10/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_10/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan / eic=16'

plot "data/d16_premium_ssd/cyclic_10/indexscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_10/indexscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_10/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_10/indexscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_10/indexscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / indexscan prefetch / eic=16'

plot "data/d16_premium_ssd/cyclic_10/indexscan/on-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_10/indexscan/on-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_10/indexscan/on-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_10/indexscan/on-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_10/indexscan/on-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / seqscan / eic=16'

plot "data/d16_premium_ssd/cyclic_10/seqscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_10/seqscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_10/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_10/seqscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_10/seqscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_25 / eic=16' font 'Verdana Bold,12'
set xrange[0.000370005180072521:100]
set title 'cyclic\_25 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/cyclic_25/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_25/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_25/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_25/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_25/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_25 / indexscan / eic=16'

plot "data/d16_premium_ssd/cyclic_25/indexscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_25/indexscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_25/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_25/indexscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_25/indexscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_25 / indexscan prefetch / eic=16'

plot "data/d16_premium_ssd/cyclic_25/indexscan/on-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_25/indexscan/on-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_25/indexscan/on-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_25/indexscan/on-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_25/indexscan/on-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_25 / seqscan / eic=16'

plot "data/d16_premium_ssd/cyclic_25/seqscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_25/seqscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_25/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_25/seqscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_25/seqscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear / eic=16' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set title 'linear / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/linear/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=16'

plot "data/d16_premium_ssd/linear/indexscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear/indexscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear/indexscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear/indexscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / indexscan prefetch / eic=16'

plot "data/d16_premium_ssd/linear/indexscan/on-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear/indexscan/on-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear/indexscan/on-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear/indexscan/on-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear/indexscan/on-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=16'

plot "data/d16_premium_ssd/linear/seqscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear/seqscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear/seqscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear/seqscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_1 / eic=16' font 'Verdana Bold,12'
set xrange[0.00049999960000032:100]
set title 'linear\_1 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/linear_1/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_1/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_1/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_1/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_1/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=16'

plot "data/d16_premium_ssd/linear_1/indexscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_1/indexscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_1/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_1/indexscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_1/indexscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / indexscan prefetch / eic=16'

plot "data/d16_premium_ssd/linear_1/indexscan/on-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_1/indexscan/on-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_1/indexscan/on-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_1/indexscan/on-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_1/indexscan/on-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=16'

plot "data/d16_premium_ssd/linear_1/seqscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_1/seqscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_1/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_1/seqscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_1/seqscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_10 / eic=16' font 'Verdana Bold,12'
set xrange[0.000459999632000294:100]
set title 'linear\_10 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/linear_10/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_10/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_10/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_10/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_10/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=16'

plot "data/d16_premium_ssd/linear_10/indexscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_10/indexscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_10/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_10/indexscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_10/indexscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / indexscan prefetch / eic=16'

plot "data/d16_premium_ssd/linear_10/indexscan/on-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_10/indexscan/on-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_10/indexscan/on-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_10/indexscan/on-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_10/indexscan/on-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=16'

plot "data/d16_premium_ssd/linear_10/seqscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_10/seqscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_10/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_10/seqscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_10/seqscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_25 / eic=16' font 'Verdana Bold,12'
set xrange[0.000420005880082321:100]
set title 'linear\_25 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/linear_25/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_25/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_25/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_25/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_25/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_25 / indexscan / eic=16'

plot "data/d16_premium_ssd/linear_25/indexscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_25/indexscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_25/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_25/indexscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_25/indexscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / indexscan prefetch / eic=16'

plot "data/d16_premium_ssd/linear_25/indexscan/on-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_25/indexscan/on-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_25/indexscan/on-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_25/indexscan/on-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_25/indexscan/on-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / seqscan / eic=16'

plot "data/d16_premium_ssd/linear_25/seqscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_25/seqscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_25/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_25/seqscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_25/seqscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / uniform / eic=16' font 'Verdana Bold,12'
set xrange[0.000730010220143082:100]
set title 'uniform / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/d16_premium_ssd/uniform/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/uniform/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/uniform/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/uniform/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/uniform/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=16'

plot "data/d16_premium_ssd/uniform/indexscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/uniform/indexscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/uniform/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/uniform/indexscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/uniform/indexscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / indexscan prefetch / eic=16'

plot "data/d16_premium_ssd/uniform/indexscan/on-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/uniform/indexscan/on-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/uniform/indexscan/on-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/uniform/indexscan/on-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/uniform/indexscan/on-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=16'

plot "data/d16_premium_ssd/uniform/seqscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/uniform/seqscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/uniform/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/uniform/seqscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/uniform/seqscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
