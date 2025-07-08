set terminal pdfcairo size 16,36 enhanced font 'Verdana,12'
set output 'ryzen-rows-cost-32GB-1-unscaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 9,4 rowsfirst
set title 'cost estimate / cyclic / eic=1' font 'Verdana Bold,12'
set xrange[0.001:100]
set title 'cyclic / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/cyclic/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=1'

plot "data/ryzen/cyclic/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / indexscan prefetch / eic=1'

plot "data/ryzen/cyclic/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=1'

plot "data/ryzen/cyclic/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'cost estimate / cyclic\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.0007:100]
set title 'cyclic\_1 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/cyclic_1/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=1'

plot "data/ryzen/cyclic_1/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / indexscan prefetch / eic=1'

plot "data/ryzen/cyclic_1/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=1'

plot "data/ryzen/cyclic_1/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'cost estimate / cyclic\\_10 / eic=1' font 'Verdana Bold,12'
set xrange[0.00046:100]
set title 'cyclic\_10 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/cyclic_10/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan / eic=1'

plot "data/ryzen/cyclic_10/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / indexscan prefetch / eic=1'

plot "data/ryzen/cyclic_10/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / seqscan / eic=1'

plot "data/ryzen/cyclic_10/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'cost estimate / linear / eic=1' font 'Verdana Bold,12'
set xrange[0.00099:100]
set title 'linear / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/linear/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=1'

plot "data/ryzen/linear/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / indexscan prefetch / eic=1'

plot "data/ryzen/linear/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=1'

plot "data/ryzen/linear/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'cost estimate / linear\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.00056:100]
set title 'linear\_1 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/linear_1/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=1'

plot "data/ryzen/linear_1/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / indexscan prefetch / eic=1'

plot "data/ryzen/linear_1/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=1'

plot "data/ryzen/linear_1/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'cost estimate / linear\\_10 / eic=1' font 'Verdana Bold,12'
set xrange[0.0004:100]
set title 'linear\_10 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/linear_10/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=1'

plot "data/ryzen/linear_10/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / indexscan prefetch / eic=1'

plot "data/ryzen/linear_10/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=1'

plot "data/ryzen/linear_10/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'cost estimate / uniform / eic=1' font 'Verdana Bold,12'
set xrange[0.0008:100]
set title 'uniform / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/uniform/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=1'

plot "data/ryzen/uniform/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / indexscan prefetch / eic=1'

plot "data/ryzen/uniform/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=1'

plot "data/ryzen/uniform/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"
