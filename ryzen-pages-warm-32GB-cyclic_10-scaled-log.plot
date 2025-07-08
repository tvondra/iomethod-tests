set terminal pdfcairo size 16,16 enhanced font 'Verdana,12'
set output 'ryzen-pages-warm-32GB-cyclic_10-scaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 4,4 rowsfirst
set title 'timing (warm) / cyclic\_10 / eic=0' font 'Verdana Bold,12'
set xrange[0.0082799933760053:100]
set yrange[0.01:3960.816]
set title 'cyclic_10 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/cyclic_10/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic_10 / indexscan / eic=0'

plot "data/ryzen/cyclic_10/indexscan/off-0-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/off-0-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/off-0-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/off-0-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic_10 / indexscan prefetch / eic=0'

plot "data/ryzen/cyclic_10/indexscan/on-0-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/on-0-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/on-0-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/on-0-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/on-0-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic_10 / seqscan / eic=0'

plot "data/ryzen/cyclic_10/seqscan/off-0-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/seqscan/off-0-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/seqscan/off-0-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/seqscan/off-0-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\_10 / eic=1' font 'Verdana Bold,12'
set xrange[0.0082799933760053:100]
set yrange[0.01:3960.816]
set title 'cyclic_10 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/cyclic_10/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic_10 / indexscan / eic=1'

plot "data/ryzen/cyclic_10/indexscan/off-1-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/off-1-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/off-1-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/off-1-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic_10 / indexscan prefetch / eic=1'

plot "data/ryzen/cyclic_10/indexscan/on-1-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/on-1-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/on-1-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/on-1-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/on-1-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic_10 / seqscan / eic=1'

plot "data/ryzen/cyclic_10/seqscan/off-1-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/seqscan/off-1-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/seqscan/off-1-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/seqscan/off-1-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\_10 / eic=16' font 'Verdana Bold,12'
set xrange[0.0082799933760053:100]
set yrange[0.01:3960.816]
set title 'cyclic_10 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/cyclic_10/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic_10 / indexscan / eic=16'

plot "data/ryzen/cyclic_10/indexscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic_10 / indexscan prefetch / eic=16'

plot "data/ryzen/cyclic_10/indexscan/on-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/on-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/on-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/on-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/on-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic_10 / seqscan / eic=16'

plot "data/ryzen/cyclic_10/seqscan/off-16-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/seqscan/off-16-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/seqscan/off-16-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/seqscan/off-16-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\_10 / eic=64' font 'Verdana Bold,12'
set xrange[0.0082799933760053:100]
set yrange[0.01:3960.816]
set title 'cyclic_10 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen/cyclic_10/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic_10 / indexscan / eic=64'

plot "data/ryzen/cyclic_10/indexscan/off-64-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/off-64-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/off-64-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/off-64-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic_10 / indexscan prefetch / eic=64'

plot "data/ryzen/cyclic_10/indexscan/on-64-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/on-64-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/on-64-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/on-64-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/on-64-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic_10 / seqscan / eic=64'

plot "data/ryzen/cyclic_10/seqscan/off-64-sync-3-32GB-4-17.data"      using 2:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/seqscan/off-64-sync-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/seqscan/off-64-worker-3-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/seqscan/off-64-worker-12-32GB-4-18.data"      using 2:4 with points pt 7 ps 0.75 title "18 / worker (12)"
