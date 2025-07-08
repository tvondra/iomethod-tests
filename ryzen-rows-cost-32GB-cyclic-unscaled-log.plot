set terminal pdfcairo size 16,16 enhanced font 'Verdana,12'
set output 'ryzen-rows-cost-32GB-cyclic-unscaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 4,4 rowsfirst
set title 'cost estimate / cyclic / eic=0' font 'Verdana Bold,12'
set xrange[0.001:100]
set title 'cyclic / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/cyclic/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=0'

plot "data/ryzen/cyclic/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / indexscan prefetch / eic=0'

plot "data/ryzen/cyclic/indexscan/on-0-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/on-0-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/on-0-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/on-0-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/on-0-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=0'

plot "data/ryzen/cyclic/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"
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
set title 'cost estimate / cyclic / eic=16' font 'Verdana Bold,12'
set xrange[0.001:100]
set title 'cyclic / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/cyclic/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=16'

plot "data/ryzen/cyclic/indexscan/off-16-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/off-16-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/off-16-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/off-16-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / indexscan prefetch / eic=16'

plot "data/ryzen/cyclic/indexscan/on-16-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/on-16-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/on-16-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/on-16-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/on-16-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=16'

plot "data/ryzen/cyclic/seqscan/off-16-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/seqscan/off-16-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/seqscan/off-16-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/seqscan/off-16-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'cost estimate / cyclic / eic=64' font 'Verdana Bold,12'
set xrange[0.001:100]
set title 'cyclic / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/cyclic/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=64'

plot "data/ryzen/cyclic/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / indexscan prefetch / eic=64'

plot "data/ryzen/cyclic/indexscan/on-64-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/on-64-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/on-64-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/on-64-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/on-64-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=64'

plot "data/ryzen/cyclic/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:5 with points pt 7 ps 0.75 title "18 / worker (12)"
