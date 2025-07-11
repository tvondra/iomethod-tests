set terminal pdfcairo size 21,36 enhanced font 'Verdana,12'
set output 'ryzen-rows-warm-32GB-64-scaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,4 rowsfirst
set title 'timing (warm) / cyclic / eic=64' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0.01:1947.104]
set title 'cyclic / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/cyclic/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=64'

plot "data/ryzen/cyclic/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / indexscan prefetch / eic=64'

plot "data/ryzen/cyclic/indexscan/on-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/on-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/on-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/on-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/on-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=64'

plot "data/ryzen/cyclic/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_1 / eic=64' font 'Verdana Bold,12'
set xrange[0.000569999544000365:100]
set yrange[0.01:2479.404]
set title 'cyclic\_1 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/cyclic_1/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=64'

plot "data/ryzen/cyclic_1/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / indexscan prefetch / eic=64'

plot "data/ryzen/cyclic_1/indexscan/on-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/indexscan/on-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/indexscan/on-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/indexscan/on-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/indexscan/on-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=64'

plot "data/ryzen/cyclic_1/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_10 / eic=64' font 'Verdana Bold,12'
set xrange[0.000419999664000269:100]
set yrange[0.01:3966.296]
set title 'cyclic\_10 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/cyclic_10/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan / eic=64'

plot "data/ryzen/cyclic_10/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / indexscan prefetch / eic=64'

plot "data/ryzen/cyclic_10/indexscan/on-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/on-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/on-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/on-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/on-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / seqscan / eic=64'

plot "data/ryzen/cyclic_10/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear / eic=64' font 'Verdana Bold,12'
set xrange[0.000989999208000634:100]
set yrange[0.01:1001.39]
set title 'linear / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/linear/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=64'

plot "data/ryzen/linear/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / indexscan prefetch / eic=64'

plot "data/ryzen/linear/indexscan/on-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/indexscan/on-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/indexscan/on-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/indexscan/on-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/indexscan/on-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=64'

plot "data/ryzen/linear/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_1 / eic=64' font 'Verdana Bold,12'
set xrange[0.000489999608000314:100]
set yrange[0.01:2521.843]
set title 'linear\_1 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/linear_1/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=64'

plot "data/ryzen/linear_1/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / indexscan prefetch / eic=64'

plot "data/ryzen/linear_1/indexscan/on-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/indexscan/on-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/indexscan/on-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/indexscan/on-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/indexscan/on-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=64'

plot "data/ryzen/linear_1/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_10 / eic=64' font 'Verdana Bold,12'
set xrange[0.000449999640000288:100]
set yrange[0.01:3972.48]
set title 'linear\_10 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/linear_10/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=64'

plot "data/ryzen/linear_10/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / indexscan prefetch / eic=64'

plot "data/ryzen/linear_10/indexscan/on-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/indexscan/on-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/indexscan/on-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/indexscan/on-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/indexscan/on-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=64'

plot "data/ryzen/linear_10/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_25 / eic=64' font 'Verdana Bold,12'
set xrange[0.000569999544000365:100]
set yrange[0.01:4179.82]
set title 'linear\_25 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/linear_25/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_25/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_25/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_25/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_25/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_25 / indexscan / eic=64'

plot "data/ryzen/linear_25/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_25/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_25/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_25/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_25/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / indexscan prefetch / eic=64'

plot "data/ryzen/linear_25/indexscan/on-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_25/indexscan/on-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_25/indexscan/on-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_25/indexscan/on-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_25/indexscan/on-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / seqscan / eic=64'

plot "data/ryzen/linear_25/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_25/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_25/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_25/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_25/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / uniform / eic=64' font 'Verdana Bold,12'
set xrange[0.000789999368000506:100]
set yrange[0.01:5536.24]
set title 'uniform / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/uniform/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=64'

plot "data/ryzen/uniform/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / indexscan prefetch / eic=64'

plot "data/ryzen/uniform/indexscan/on-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/indexscan/on-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/indexscan/on-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/indexscan/on-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/indexscan/on-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=64'

plot "data/ryzen/uniform/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
