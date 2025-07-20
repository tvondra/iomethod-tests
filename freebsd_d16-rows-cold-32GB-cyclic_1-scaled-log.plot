set terminal pdfcairo size 21,16 enhanced font 'Verdana,12'
set output 'freebsd_d16-rows-cold-32GB-cyclic_1-scaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 4,4 rowsfirst
set title 'timing (cold) / cyclic\\_1 / eic=0' font 'Verdana Bold,12'
set xrange[0.000479999616000307:100]
set yrange[0.01:26187.102]
set title 'cyclic\_1 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/freebsd_d16/cyclic_1/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=0'

plot "data/freebsd_d16/cyclic_1/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / indexscan prefetch / eic=0'

plot "data/freebsd_d16/cyclic_1/indexscan/on-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/indexscan/on-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/indexscan/on-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/indexscan/on-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=0'

plot "data/freebsd_d16/cyclic_1/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.000479999616000307:100]
set yrange[0.01:26187.102]
set title 'cyclic\_1 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/freebsd_d16/cyclic_1/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=1'

plot "data/freebsd_d16/cyclic_1/indexscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/indexscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/indexscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/indexscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / indexscan prefetch / eic=1'

plot "data/freebsd_d16/cyclic_1/indexscan/on-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/indexscan/on-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/indexscan/on-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/indexscan/on-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=1'

plot "data/freebsd_d16/cyclic_1/seqscan/off-1-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/seqscan/off-1-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/seqscan/off-1-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/seqscan/off-1-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_1 / eic=16' font 'Verdana Bold,12'
set xrange[0.000479999616000307:100]
set yrange[0.01:26187.102]
set title 'cyclic\_1 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/freebsd_d16/cyclic_1/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=16'

plot "data/freebsd_d16/cyclic_1/indexscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/indexscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/indexscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/indexscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / indexscan prefetch / eic=16'

plot "data/freebsd_d16/cyclic_1/indexscan/on-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/indexscan/on-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/indexscan/on-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/indexscan/on-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=16'

plot "data/freebsd_d16/cyclic_1/seqscan/off-16-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/seqscan/off-16-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/seqscan/off-16-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/seqscan/off-16-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_1 / eic=64' font 'Verdana Bold,12'
set xrange[0.000479999616000307:100]
set yrange[0.01:26187.102]
set title 'cyclic\_1 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/freebsd_d16/cyclic_1/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=64'

plot "data/freebsd_d16/cyclic_1/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / indexscan prefetch / eic=64'

plot "data/freebsd_d16/cyclic_1/indexscan/on-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/indexscan/on-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/indexscan/on-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/indexscan/on-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=64'

plot "data/freebsd_d16/cyclic_1/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/freebsd_d16/cyclic_1/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/freebsd_d16/cyclic_1/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/freebsd_d16/cyclic_1/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
