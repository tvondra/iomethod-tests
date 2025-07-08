set terminal pdfcairo size 16,36 enhanced font 'Verdana,12'
set output 'ryzen-pages-cost-32GB-1-scaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set title 'cost estimate / cyclic / eic=1' font 'Verdana Bold,12'
set xrange[0.0179999856000115:100]
set yrange[0:5865296.01]
set title 'cyclic / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/cyclic/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=1'

plot "data/ryzen/cyclic/indexscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=1'

plot "data/ryzen/cyclic/seqscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/seqscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/seqscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/seqscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'cost estimate / cyclic\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.0125999899200081:100]
set yrange[0:5854204.23]
set title 'cyclic\_1 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/cyclic_1/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=1'

plot "data/ryzen/cyclic_1/indexscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/indexscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/indexscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/indexscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=1'

plot "data/ryzen/cyclic_1/seqscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/seqscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/seqscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/seqscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'cost estimate / cyclic\\_10 / eic=1' font 'Verdana Bold,12'
set xrange[0.0082799933760053:100]
set yrange[0:5569592.1]
set title 'cyclic\_10 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/cyclic_10/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan / eic=1'

plot "data/ryzen/cyclic_10/indexscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / seqscan / eic=1'

plot "data/ryzen/cyclic_10/seqscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/seqscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/seqscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/seqscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'cost estimate / cyclic\\_25 / eic=1' font 'Verdana Bold,12'
set xrange[0.00809999352000518:100]
set yrange[0:5061772.54]
set title 'cyclic\_25 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/cyclic_25/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_25/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_25/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_25/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_25/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_25 / indexscan / eic=1'

plot "data/ryzen/cyclic_25/indexscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_25/indexscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_25/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_25/indexscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_25/indexscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_25 / seqscan / eic=1'

plot "data/ryzen/cyclic_25/seqscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_25/seqscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_25/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_25/seqscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_25/seqscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'cost estimate / linear / eic=1' font 'Verdana Bold,12'
set xrange[0.00107999913600069:100]
set yrange[0:911956.18]
set title 'linear / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/linear/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=1'

plot "data/ryzen/linear/indexscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/indexscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/indexscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/indexscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=1'

plot "data/ryzen/linear/seqscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/seqscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/seqscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/seqscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'cost estimate / linear\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.0100799919360065:100]
set yrange[0:911905.23]
set title 'linear\_1 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/linear_1/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=1'

plot "data/ryzen/linear_1/indexscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/indexscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/indexscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/indexscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=1'

plot "data/ryzen/linear_1/seqscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/seqscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/seqscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/seqscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'cost estimate / linear\\_10 / eic=1' font 'Verdana Bold,12'
set xrange[0.00719999424000461:100]
set yrange[0:1263307.16]
set title 'linear\_10 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/linear_10/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=1'

plot "data/ryzen/linear_10/indexscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/indexscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/indexscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/indexscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=1'

plot "data/ryzen/linear_10/seqscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/seqscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/seqscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/seqscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'cost estimate / linear\\_25 / eic=1' font 'Verdana Bold,12'
set xrange[0.00809999352000518:100]
set yrange[0:2513978.94]
set title 'linear\_25 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/linear_25/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_25/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_25/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_25/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_25/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_25 / indexscan / eic=1'

plot "data/ryzen/linear_25/indexscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_25/indexscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_25/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_25/indexscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_25/indexscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / seqscan / eic=1'

plot "data/ryzen/linear_25/seqscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_25/seqscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_25/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_25/seqscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_25/seqscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'cost estimate / uniform / eic=1' font 'Verdana Bold,12'
set xrange[0.0143999884800092:100]
set yrange[0:5856103.25]
set title 'uniform / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'cost estimate'

plot "data/ryzen/uniform/bitmapscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/bitmapscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/bitmapscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/bitmapscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/bitmapscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=1'

plot "data/ryzen/uniform/indexscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/indexscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/indexscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/indexscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/indexscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=1'

plot "data/ryzen/uniform/seqscan/off-1-sync-3-32GB-4-17.data"      using 2:5 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/seqscan/off-1-sync-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/seqscan/off-1-io_uring-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/seqscan/off-1-worker-3-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/seqscan/off-1-worker-12-32GB-4-18.data"      using 2:5 with points pt 7 ps 0.75 title "18 / worker (12)"
