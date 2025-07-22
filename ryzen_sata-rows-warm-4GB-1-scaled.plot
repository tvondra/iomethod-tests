set terminal pdfcairo size 16,36 enhanced font 'Verdana,12'
set output 'ryzen_sata-rows-warm-4GB-1-scaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set title 'timing (warm) / cyclic / eic=1' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0:3804.374]
set title 'cyclic / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen_sata/cyclic/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=1'

plot "data/ryzen_sata/cyclic/indexscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic/indexscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic/indexscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic/indexscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=1'

plot "data/ryzen_sata/cyclic/seqscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic/seqscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic/seqscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic/seqscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.000319999744000205:100]
set yrange[0:5083.192]
set title 'cyclic\_1 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen_sata/cyclic_1/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_1/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_1/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_1/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_1/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=1'

plot "data/ryzen_sata/cyclic_1/indexscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_1/indexscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_1/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_1/indexscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_1/indexscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=1'

plot "data/ryzen_sata/cyclic_1/seqscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_1/seqscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_1/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_1/seqscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_1/seqscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_10 / eic=1' font 'Verdana Bold,12'
set xrange[0.00049999960000032:100]
set yrange[0:6096.478]
set title 'cyclic\_10 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen_sata/cyclic_10/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_10/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_10/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_10/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_10/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan / eic=1'

plot "data/ryzen_sata/cyclic_10/indexscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_10/indexscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_10/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_10/indexscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_10/indexscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / seqscan / eic=1'

plot "data/ryzen_sata/cyclic_10/seqscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_10/seqscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_10/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_10/seqscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_10/seqscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / cyclic\\_25 / eic=1' font 'Verdana Bold,12'
set xrange[0.000379999696000243:100]
set yrange[0:5715.86]
set title 'cyclic\_25 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen_sata/cyclic_25/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_25/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_25/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_25/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_25/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_25 / indexscan / eic=1'

plot "data/ryzen_sata/cyclic_25/indexscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_25/indexscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_25/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_25/indexscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_25/indexscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_25 / seqscan / eic=1'

plot "data/ryzen_sata/cyclic_25/seqscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_25/seqscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_25/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_25/seqscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_25/seqscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear / eic=1' font 'Verdana Bold,12'
set xrange[0.000989999208000634:100]
set yrange[0:1891.588]
set title 'linear / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen_sata/linear/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=1'

plot "data/ryzen_sata/linear/indexscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear/indexscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear/indexscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear/indexscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=1'

plot "data/ryzen_sata/linear/seqscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear/seqscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear/seqscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear/seqscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.000569999544000365:100]
set yrange[0:5090.086]
set title 'linear\_1 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen_sata/linear_1/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_1/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_1/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_1/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_1/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=1'

plot "data/ryzen_sata/linear_1/indexscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_1/indexscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_1/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_1/indexscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_1/indexscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=1'

plot "data/ryzen_sata/linear_1/seqscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_1/seqscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_1/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_1/seqscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_1/seqscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_10 / eic=1' font 'Verdana Bold,12'
set xrange[0.000479999616000307:100]
set yrange[0:6201.749]
set title 'linear\_10 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen_sata/linear_10/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_10/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_10/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_10/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_10/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=1'

plot "data/ryzen_sata/linear_10/indexscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_10/indexscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_10/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_10/indexscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_10/indexscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=1'

plot "data/ryzen_sata/linear_10/seqscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_10/seqscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_10/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_10/seqscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_10/seqscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / linear\\_25 / eic=1' font 'Verdana Bold,12'
set xrange[0.000409999672000262:100]
set yrange[0:5716.691]
set title 'linear\_25 / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen_sata/linear_25/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_25/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_25/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_25/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_25/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_25 / indexscan / eic=1'

plot "data/ryzen_sata/linear_25/indexscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_25/indexscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_25/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_25/indexscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_25/indexscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / seqscan / eic=1'

plot "data/ryzen_sata/linear_25/seqscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_25/seqscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_25/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_25/seqscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_25/seqscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (warm) / uniform / eic=1' font 'Verdana Bold,12'
set xrange[0.000779999376000499:100]
set yrange[0:8636.425]
set title 'uniform / 1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (warm)'

plot "data/ryzen_sata/uniform/bitmapscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/uniform/bitmapscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/uniform/bitmapscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/uniform/bitmapscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/uniform/bitmapscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=1'

plot "data/ryzen_sata/uniform/indexscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/uniform/indexscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/uniform/indexscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/uniform/indexscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/uniform/indexscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=1'

plot "data/ryzen_sata/uniform/seqscan/off-1-sync-3-4GB-4-17.data"      using 1:4 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/uniform/seqscan/off-1-sync-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/uniform/seqscan/off-1-io_uring-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/uniform/seqscan/off-1-worker-3-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/uniform/seqscan/off-1-worker-12-4GB-4-18.data"      using 1:4 with points pt 7 ps 0.75 title "18 / worker (12)"
