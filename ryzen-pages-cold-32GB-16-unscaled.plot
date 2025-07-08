set terminal pdfcairo size 16,36 enhanced font 'Verdana,12'
set output 'ryzen-pages-cold-32GB-16-unscaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set title 'timing (cold) / cyclic / eic=16' font 'Verdana Bold,12'
set xrange[0.0179999856000115:100]
set title 'cyclic / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/cyclic/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=16'

plot "data/ryzen/cyclic/indexscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=16'

plot "data/ryzen/cyclic/seqscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/seqscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/seqscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/seqscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_1 / eic=16' font 'Verdana Bold,12'
set xrange[0.0125999899200081:100]
set title 'cyclic\_1 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/cyclic_1/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=16'

plot "data/ryzen/cyclic_1/indexscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/indexscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/indexscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/indexscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=16'

plot "data/ryzen/cyclic_1/seqscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/seqscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/seqscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/seqscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_10 / eic=16' font 'Verdana Bold,12'
set xrange[0.0082799933760053:100]
set title 'cyclic\_10 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/cyclic_10/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan / eic=16'

plot "data/ryzen/cyclic_10/indexscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / seqscan / eic=16'

plot "data/ryzen/cyclic_10/seqscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/seqscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/seqscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/seqscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear / eic=16' font 'Verdana Bold,12'
set xrange[0.00107999913600069:100]
set title 'linear / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/linear/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=16'

plot "data/ryzen/linear/indexscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/indexscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/indexscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/indexscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=16'

plot "data/ryzen/linear/seqscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/seqscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/seqscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/seqscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_1 / eic=16' font 'Verdana Bold,12'
set xrange[0.0100799919360065:100]
set title 'linear\_1 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/linear_1/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=16'

plot "data/ryzen/linear_1/indexscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/indexscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/indexscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/indexscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=16'

plot "data/ryzen/linear_1/seqscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/seqscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/seqscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/seqscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_10 / eic=16' font 'Verdana Bold,12'
set xrange[0.00719999424000461:100]
set title 'linear\_10 / 16 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/linear_10/bitmapscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/bitmapscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/bitmapscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/bitmapscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/bitmapscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=16'

plot "data/ryzen/linear_10/indexscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/indexscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/indexscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/indexscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/indexscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=16'

plot "data/ryzen/linear_10/seqscan/off-16-sync-3-32GB-4-17.data"      using 2:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/seqscan/off-16-sync-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/seqscan/off-16-io_uring-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/seqscan/off-16-worker-3-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/seqscan/off-16-worker-12-32GB-4-18.data"      using 2:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / uniform / eic=16' font 'Verdana Bold,12'
set xrange[0.0143999884800092:100]
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
