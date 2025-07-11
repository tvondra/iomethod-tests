set terminal pdfcairo size 21,36 enhanced font 'Verdana,12'
set output 'ryzen-rows-warm-32GB-1-scaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,4 rowsfirst
set title 'timing (warm) / cyclic / eic=1' font 'Verdana Bold,12'
set xrange[0.001:100]
set yrange[0.01:3735.083]
set title 'cyclic / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/cyclic/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=1'

plot "data/ryzen/cyclic/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / indexscan prefetch / eic=1'

plot "data/ryzen/cyclic/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=1'

plot "data/ryzen/cyclic/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.00036:100]
set yrange[0.01:5144.004]
set title 'cyclic\_1 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/cyclic_1/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=1'

plot "data/ryzen/cyclic_1/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / indexscan prefetch / eic=1'

plot "data/ryzen/cyclic_1/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=1'

plot "data/ryzen/cyclic_1/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_10 / eic=1' font 'Verdana Bold,12'
set xrange[0.00032:100]
set yrange[0.01:6274.942]
set title 'cyclic\_10 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/cyclic_10/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan / eic=1'

plot "data/ryzen/cyclic_10/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / indexscan prefetch / eic=1'

plot "data/ryzen/cyclic_10/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / seqscan / eic=1'

plot "data/ryzen/cyclic_10/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_25 / eic=1' font 'Verdana Bold,12'
set xrange[0.00036:100]
set yrange[0.01:6019.248]
set title 'cyclic\_25 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/cyclic_25/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_25/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_25/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_25/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_25/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_25 / indexscan / eic=1'

plot "data/ryzen/cyclic_25/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_25/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_25/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_25/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_25/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_25 / indexscan prefetch / eic=1'

plot "data/ryzen/cyclic_25/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_25/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_25/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_25/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_25/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_25 / seqscan / eic=1'

plot "data/ryzen/cyclic_25/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_25/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_25/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_25/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_25/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear / eic=1' font 'Verdana Bold,12'
set xrange[0.00099:100]
set yrange[0.01:3407.29]
set title 'linear / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/linear/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=1'

plot "data/ryzen/linear/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / indexscan prefetch / eic=1'

plot "data/ryzen/linear/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=1'

plot "data/ryzen/linear/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.00049:100]
set yrange[0.01:5164.126]
set title 'linear\_1 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/linear_1/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=1'

plot "data/ryzen/linear_1/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / indexscan prefetch / eic=1'

plot "data/ryzen/linear_1/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=1'

plot "data/ryzen/linear_1/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_10 / eic=1' font 'Verdana Bold,12'
set xrange[0.0004:100]
set yrange[0.01:6256.817]
set title 'linear\_10 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/linear_10/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=1'

plot "data/ryzen/linear_10/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / indexscan prefetch / eic=1'

plot "data/ryzen/linear_10/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=1'

plot "data/ryzen/linear_10/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_25 / eic=1' font 'Verdana Bold,12'
set xrange[0.00042:100]
set yrange[0.01:5775.373]
set title 'linear\_25 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/linear_25/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_25/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_25/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_25/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_25/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_25 / indexscan / eic=1'

plot "data/ryzen/linear_25/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_25/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_25/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_25/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_25/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / indexscan prefetch / eic=1'

plot "data/ryzen/linear_25/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_25/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_25/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_25/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_25/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / seqscan / eic=1'

plot "data/ryzen/linear_25/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_25/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_25/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_25/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_25/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / uniform / eic=1' font 'Verdana Bold,12'
set xrange[0.00067:100]
set yrange[0.01:8771.254]
set title 'uniform / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/uniform/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=1'

plot "data/ryzen/uniform/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / indexscan prefetch / eic=1'

plot "data/ryzen/uniform/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=1'

plot "data/ryzen/uniform/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
