set terminal pdfcairo size 16,16 enhanced font 'Verdana,12'
set output 'ryzen-pages-cold-32GB-uniform-scaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 4,3 rowsfirst
set title 'timing (cold) / uniform / eic=0' font 'Verdana Bold,12'
set xrange[0.0143999884800092:100]
set yrange[0.01:27583.034]
set title 'uniform / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/uniform/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=0'

plot "data/ryzen/uniform/indexscan/off-0-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/indexscan/off-0-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/indexscan/off-0-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/indexscan/off-0-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=0'

plot "data/ryzen/uniform/seqscan/off-0-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/seqscan/off-0-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/seqscan/off-0-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/seqscan/off-0-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / uniform / eic=1' font 'Verdana Bold,12'
set xrange[0.0143999884800092:100]
set yrange[0.01:27583.034]
set title 'uniform / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/uniform/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=1'

plot "data/ryzen/uniform/indexscan/off-1-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/indexscan/off-1-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/indexscan/off-1-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/indexscan/off-1-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=1'

plot "data/ryzen/uniform/seqscan/off-1-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/seqscan/off-1-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/seqscan/off-1-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/seqscan/off-1-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / uniform / eic=16' font 'Verdana Bold,12'
set xrange[0.0143999884800092:100]
set yrange[0.01:27583.034]
set title 'uniform / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/uniform/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=16'

plot "data/ryzen/uniform/indexscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/indexscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/indexscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/indexscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=16'

plot "data/ryzen/uniform/seqscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/seqscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/seqscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/seqscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / uniform / eic=64' font 'Verdana Bold,12'
set xrange[0.0143999884800092:100]
set yrange[0.01:27583.034]
set title 'uniform / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/uniform/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=64'

plot "data/ryzen/uniform/indexscan/off-64-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/indexscan/off-64-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/indexscan/off-64-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/indexscan/off-64-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=64'

plot "data/ryzen/uniform/seqscan/off-64-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/seqscan/off-64-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/seqscan/off-64-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/seqscan/off-64-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"
