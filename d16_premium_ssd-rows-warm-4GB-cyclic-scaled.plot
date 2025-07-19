set terminal pdfcairo size 16,16 enhanced font 'Verdana,12'
set output 'd16_premium_ssd-rows-warm-4GB-cyclic-scaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 4,3 rowsfirst
set title 'timing (warm) / cyclic / eic=0' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0:15451.578]
set title 'cyclic / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/d16_premium_ssd/cyclic/bitmapscan/off-0-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-0-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-0-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-0-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-0-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=0'

plot "data/d16_premium_ssd/cyclic/indexscan/off-0-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/indexscan/off-0-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/indexscan/off-0-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/indexscan/off-0-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/indexscan/off-0-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=0'

plot "data/d16_premium_ssd/cyclic/seqscan/off-0-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/seqscan/off-0-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/seqscan/off-0-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/seqscan/off-0-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/seqscan/off-0-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic / eic=1' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0:15451.578]
set title 'cyclic / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/d16_premium_ssd/cyclic/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=1'

plot "data/d16_premium_ssd/cyclic/indexscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/indexscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/indexscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/indexscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=1'

plot "data/d16_premium_ssd/cyclic/seqscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/seqscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/seqscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/seqscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
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
set title 'timing (warm) / cyclic / eic=64' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0:15451.578]
set title 'cyclic / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/d16_premium_ssd/cyclic/bitmapscan/off-64-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-64-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-64-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-64-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/bitmapscan/off-64-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=64'

plot "data/d16_premium_ssd/cyclic/indexscan/off-64-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/indexscan/off-64-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/indexscan/off-64-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/indexscan/off-64-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/indexscan/off-64-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=64'

plot "data/d16_premium_ssd/cyclic/seqscan/off-64-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/d16_premium_ssd/cyclic/seqscan/off-64-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/d16_premium_ssd/cyclic/seqscan/off-64-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/d16_premium_ssd/cyclic/seqscan/off-64-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/d16_premium_ssd/cyclic/seqscan/off-64-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
