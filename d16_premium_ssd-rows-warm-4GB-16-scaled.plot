set terminal pdfcairo size 16,36 enhanced font 'Verdana,12'
set output 'd16_premium_ssd-rows-warm-4GB-16-scaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set title 'timing (warm) / cyclic / eic=16' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0:15451.578]
set title 'cyclic / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/d16_premium_ssd/cyclic/bitmapscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=16'

plot "data/d16_premium_ssd/cyclic/indexscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/indexscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/indexscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/indexscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/indexscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=16'

plot "data/d16_premium_ssd/cyclic/seqscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/seqscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/seqscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/seqscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/seqscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_1 / eic=16' font 'Verdana Bold,12'
set xrange[0.000530007420103881:100]
set yrange[0:19500.113]
set title 'cyclic\_1 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/d16_premium_ssd/cyclic_1/bitmapscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_1/bitmapscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_1/bitmapscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_1/bitmapscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_1/bitmapscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=16'

plot "data/d16_premium_ssd/cyclic_1/indexscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_1/indexscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_1/indexscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_1/indexscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_1/indexscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=16'

plot "data/d16_premium_ssd/cyclic_1/seqscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_1/seqscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_1/seqscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_1/seqscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_1/seqscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_10 / eic=16' font 'Verdana Bold,12'
set xrange[0.000459999632000294:100]
set yrange[0:20710.118]
set title 'cyclic\_10 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/d16_premium_ssd/cyclic_10/bitmapscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_10/bitmapscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_10/bitmapscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_10/bitmapscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_10/bitmapscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan / eic=16'

plot "data/d16_premium_ssd/cyclic_10/indexscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_10/indexscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_10/indexscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_10/indexscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_10/indexscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / seqscan / eic=16'

plot "data/d16_premium_ssd/cyclic_10/seqscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic_10/seqscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic_10/seqscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic_10/seqscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic_10/seqscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear / eic=16' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0:4606.585]
set title 'linear / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/d16_premium_ssd/linear/bitmapscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear/bitmapscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear/bitmapscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear/bitmapscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear/bitmapscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=16'

plot "data/d16_premium_ssd/linear/indexscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear/indexscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear/indexscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear/indexscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear/indexscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=16'

plot "data/d16_premium_ssd/linear/seqscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear/seqscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear/seqscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear/seqscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear/seqscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_1 / eic=16' font 'Verdana Bold,12'
set xrange[0.00049999960000032:100]
set yrange[0:19196.666]
set title 'linear\_1 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/d16_premium_ssd/linear_1/bitmapscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_1/bitmapscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_1/bitmapscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_1/bitmapscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_1/bitmapscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=16'

plot "data/d16_premium_ssd/linear_1/indexscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_1/indexscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_1/indexscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_1/indexscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_1/indexscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=16'

plot "data/d16_premium_ssd/linear_1/seqscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_1/seqscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_1/seqscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_1/seqscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_1/seqscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_10 / eic=16' font 'Verdana Bold,12'
set xrange[0.000459999632000294:100]
set yrange[0:20458.85]
set title 'linear\_10 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/d16_premium_ssd/linear_10/bitmapscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_10/bitmapscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_10/bitmapscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_10/bitmapscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_10/bitmapscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=16'

plot "data/d16_premium_ssd/linear_10/indexscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_10/indexscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_10/indexscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_10/indexscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_10/indexscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=16'

plot "data/d16_premium_ssd/linear_10/seqscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/linear_10/seqscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/linear_10/seqscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/linear_10/seqscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/linear_10/seqscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / uniform / eic=16' font 'Verdana Bold,12'
set xrange[0.000730010220143082:100]
set yrange[0:29092.781]
set title 'uniform / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/d16_premium_ssd/uniform/bitmapscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/uniform/bitmapscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/uniform/bitmapscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/uniform/bitmapscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/uniform/bitmapscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=16'

plot "data/d16_premium_ssd/uniform/indexscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/uniform/indexscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/uniform/indexscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/uniform/indexscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/uniform/indexscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=16'

plot "data/d16_premium_ssd/uniform/seqscan/off-16-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/uniform/seqscan/off-16-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/uniform/seqscan/off-16-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/uniform/seqscan/off-16-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/uniform/seqscan/off-16-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
