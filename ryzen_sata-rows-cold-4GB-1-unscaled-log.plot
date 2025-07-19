set terminal pdfcairo size 16,36 enhanced font 'Verdana,12'
set output 'ryzen_sata-rows-cold-4GB-1-unscaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set title 'timing (cold) / cyclic / eic=1' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set title 'cyclic / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen_sata/cyclic/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=1'

plot "data/ryzen_sata/cyclic/indexscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic/indexscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic/indexscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic/indexscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=1'

plot "data/ryzen_sata/cyclic/seqscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic/seqscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic/seqscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic/seqscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear / eic=1' font 'Verdana Bold,12'
set xrange[0.000989999208000634:100]
set title 'linear / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen_sata/linear/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=1'

plot "data/ryzen_sata/linear/indexscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear/indexscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear/indexscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear/indexscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=1'

plot "data/ryzen_sata/linear/seqscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear/seqscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear/seqscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear/seqscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.000629999496000403:100]
set title 'linear\_1 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen_sata/linear_1/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_1/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_1/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_1/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_1/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=1'

plot "data/ryzen_sata/linear_1/indexscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_1/indexscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_1/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_1/indexscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_1/indexscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=1'

plot "data/ryzen_sata/linear_1/seqscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_1/seqscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_1/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_1/seqscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_1/seqscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / uniform / eic=1' font 'Verdana Bold,12'
set xrange[0.000779999376000499:100]
set title 'uniform / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen_sata/uniform/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/uniform/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/uniform/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/uniform/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/uniform/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=1'

plot "data/ryzen_sata/uniform/indexscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/uniform/indexscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/uniform/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/uniform/indexscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/uniform/indexscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=1'

plot "data/ryzen_sata/uniform/seqscan/off-1-sync-3-4GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/uniform/seqscan/off-1-sync-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/uniform/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/uniform/seqscan/off-1-worker-3-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/uniform/seqscan/off-1-worker-12-4GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
