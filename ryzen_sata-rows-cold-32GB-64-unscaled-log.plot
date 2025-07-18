set terminal pdfcairo size 16,36 enhanced font 'Verdana,12'
set output 'ryzen_sata-rows-cold-32GB-64-unscaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set title 'timing (cold) / cyclic / eic=64' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set title 'cyclic / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen_sata/cyclic/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=64'

plot "data/ryzen_sata/cyclic/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=64'

plot "data/ryzen_sata/cyclic/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_1 / eic=64' font 'Verdana Bold,12'
set xrange[0.000319999744000205:100]
set title 'cyclic\_1 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen_sata/cyclic_1/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_1/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_1/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_1/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_1/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=64'

plot "data/ryzen_sata/cyclic_1/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_1/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_1/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_1/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_1/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=64'

plot "data/ryzen_sata/cyclic_1/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_1/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_1/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_1/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_1/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_10 / eic=64' font 'Verdana Bold,12'
set xrange[0.000519999584000333:100]
set title 'cyclic\_10 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen_sata/cyclic_10/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_10/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_10/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_10/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_10/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan / eic=64'

plot "data/ryzen_sata/cyclic_10/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_10/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_10/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_10/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_10/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / seqscan / eic=64'

plot "data/ryzen_sata/cyclic_10/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_10/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_10/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_10/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_10/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_25 / eic=64' font 'Verdana Bold,12'
set xrange[0.000379999696000243:100]
set title 'cyclic\_25 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen_sata/cyclic_25/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_25/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_25/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_25/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_25/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_25 / indexscan / eic=64'

plot "data/ryzen_sata/cyclic_25/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_25/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_25/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_25/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_25/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_25 / seqscan / eic=64'

plot "data/ryzen_sata/cyclic_25/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/cyclic_25/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/cyclic_25/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/cyclic_25/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/cyclic_25/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear / eic=64' font 'Verdana Bold,12'
set xrange[0.000989999208000634:100]
set title 'linear / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen_sata/linear/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=64'

plot "data/ryzen_sata/linear/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=64'

plot "data/ryzen_sata/linear/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_1 / eic=64' font 'Verdana Bold,12'
set xrange[0.000629999496000403:100]
set title 'linear\_1 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen_sata/linear_1/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_1/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_1/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_1/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_1/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=64'

plot "data/ryzen_sata/linear_1/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_1/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_1/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_1/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_1/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=64'

plot "data/ryzen_sata/linear_1/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_1/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_1/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_1/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_1/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_10 / eic=64' font 'Verdana Bold,12'
set xrange[0.000479999616000307:100]
set title 'linear\_10 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen_sata/linear_10/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_10/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_10/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_10/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_10/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=64'

plot "data/ryzen_sata/linear_10/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_10/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_10/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_10/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_10/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=64'

plot "data/ryzen_sata/linear_10/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_10/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_10/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_10/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_10/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_25 / eic=64' font 'Verdana Bold,12'
set xrange[0.000409999672000262:100]
set title 'linear\_25 / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen_sata/linear_25/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_25/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_25/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_25/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_25/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_25 / indexscan / eic=64'

plot "data/ryzen_sata/linear_25/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_25/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_25/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_25/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_25/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / seqscan / eic=64'

plot "data/ryzen_sata/linear_25/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/linear_25/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/linear_25/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/linear_25/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/linear_25/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / uniform / eic=64' font 'Verdana Bold,12'
set xrange[0.000779999376000499:100]
set title 'uniform / 64 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen_sata/uniform/bitmapscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/uniform/bitmapscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/uniform/bitmapscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/uniform/bitmapscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/uniform/bitmapscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=64'

plot "data/ryzen_sata/uniform/indexscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/uniform/indexscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/uniform/indexscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/uniform/indexscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/uniform/indexscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=64'

plot "data/ryzen_sata/uniform/seqscan/off-64-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen_sata/uniform/seqscan/off-64-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen_sata/uniform/seqscan/off-64-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen_sata/uniform/seqscan/off-64-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen_sata/uniform/seqscan/off-64-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
