set terminal pdfcairo size 21,36 enhanced font 'Verdana,12'
set output 'ryzen-rows-cold-4GB-0-scaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,4 rowsfirst
set title 'timing (cold) / cyclic / eic=0' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0.01:29514.637]
set title 'cyclic / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/cyclic/bitmapscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/bitmapscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/bitmapscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/bitmapscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/bitmapscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=0'

plot "data/ryzen/cyclic/indexscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / indexscan prefetch / eic=0'

plot "data/ryzen/cyclic/indexscan/on-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/on-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/on-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/on-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/on-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=0'

plot "data/ryzen/cyclic/seqscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/seqscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/seqscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/seqscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/seqscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_1 / eic=0' font 'Verdana Bold,12'
set xrange[0.000569999544000365:100]
set yrange[0.01:19668.847]
set title 'cyclic\_1 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/cyclic_1/bitmapscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/bitmapscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/bitmapscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/bitmapscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/bitmapscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=0'

plot "data/ryzen/cyclic_1/indexscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/indexscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/indexscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/indexscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/indexscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / indexscan prefetch / eic=0'

plot "data/ryzen/cyclic_1/indexscan/on-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/indexscan/on-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/indexscan/on-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/indexscan/on-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/indexscan/on-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=0'

plot "data/ryzen/cyclic_1/seqscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/seqscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/seqscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/seqscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/seqscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_10 / eic=0' font 'Verdana Bold,12'
set xrange[0.000419999664000269:100]
set yrange[0.01:30831.859]
set title 'cyclic\_10 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/cyclic_10/bitmapscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/bitmapscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/bitmapscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/bitmapscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/bitmapscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan / eic=0'

plot "data/ryzen/cyclic_10/indexscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / indexscan prefetch / eic=0'

plot "data/ryzen/cyclic_10/indexscan/on-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/on-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/on-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/on-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/on-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / seqscan / eic=0'

plot "data/ryzen/cyclic_10/seqscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/seqscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/seqscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/seqscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/seqscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear / eic=0' font 'Verdana Bold,12'
set xrange[0.000989999208000634:100]
set yrange[0.01:9129.435]
set title 'linear / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/linear/bitmapscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/bitmapscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/bitmapscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/bitmapscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/bitmapscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=0'

plot "data/ryzen/linear/indexscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/indexscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/indexscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/indexscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/indexscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / indexscan prefetch / eic=0'

plot "data/ryzen/linear/indexscan/on-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/indexscan/on-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/indexscan/on-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/indexscan/on-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/indexscan/on-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=0'

plot "data/ryzen/linear/seqscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/seqscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/seqscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/seqscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/seqscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_1 / eic=0' font 'Verdana Bold,12'
set xrange[0.000489999608000314:100]
set yrange[0.01:31895.861]
set title 'linear\_1 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/linear_1/bitmapscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/bitmapscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/bitmapscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/bitmapscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/bitmapscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=0'

plot "data/ryzen/linear_1/indexscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/indexscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/indexscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/indexscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/indexscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / indexscan prefetch / eic=0'

plot "data/ryzen/linear_1/indexscan/on-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/indexscan/on-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/indexscan/on-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/indexscan/on-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/indexscan/on-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=0'

plot "data/ryzen/linear_1/seqscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/seqscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/seqscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/seqscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/seqscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_10 / eic=0' font 'Verdana Bold,12'
set xrange[0.00039:100]
set yrange[0.01:34928.422]
set title 'linear\_10 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/linear_10/bitmapscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/bitmapscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/bitmapscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/bitmapscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/bitmapscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=0'

plot "data/ryzen/linear_10/indexscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/indexscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/indexscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/indexscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/indexscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / indexscan prefetch / eic=0'

plot "data/ryzen/linear_10/indexscan/on-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/indexscan/on-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/indexscan/on-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/indexscan/on-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/indexscan/on-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=0'

plot "data/ryzen/linear_10/seqscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/seqscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/seqscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/seqscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/seqscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / uniform / eic=0' font 'Verdana Bold,12'
set xrange[0.00073:100]
set yrange[0.01:35887.122]
set title 'uniform / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/uniform/bitmapscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/bitmapscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/bitmapscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/bitmapscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/bitmapscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=0'

plot "data/ryzen/uniform/indexscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/indexscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/indexscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/indexscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/indexscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / indexscan prefetch / eic=0'

plot "data/ryzen/uniform/indexscan/on-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/indexscan/on-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/indexscan/on-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/indexscan/on-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/indexscan/on-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=0'

plot "data/ryzen/uniform/seqscan/off-0-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/seqscan/off-0-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/seqscan/off-0-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/seqscan/off-0-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/seqscan/off-0-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
