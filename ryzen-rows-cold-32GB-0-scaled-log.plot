set terminal pdfcairo size 16,36 enhanced font 'Verdana,12'
set output 'ryzen-rows-cold-32GB-0-scaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set title 'timing (cold) / cyclic / eic=0' font 'Verdana Bold,12'
set xrange[0.001:100]
set yrange[0.01:23605.65]
set title 'cyclic / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/cyclic/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic / indexscan / eic=0'

plot "data/ryzen/cyclic/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic / seqscan / eic=0'

plot "data/ryzen/cyclic/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_1 / eic=0' font 'Verdana Bold,12'
set xrange[0.00036:100]
set yrange[0.01:15338.199]
set title 'cyclic\_1 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/cyclic_1/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan / eic=0'

plot "data/ryzen/cyclic_1/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_1 / seqscan / eic=0'

plot "data/ryzen/cyclic_1/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_1/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_1/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_1/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_1/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_10 / eic=0' font 'Verdana Bold,12'
set xrange[0.00046:100]
set yrange[0.01:25741.095]
set title 'cyclic\_10 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/cyclic_10/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan / eic=0'

plot "data/ryzen/cyclic_10/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_10 / seqscan / eic=0'

plot "data/ryzen/cyclic_10/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_10/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_10/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_10/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_10/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / cyclic\\_25 / eic=0' font 'Verdana Bold,12'
set xrange[0.00044:100]
set yrange[0.01:26587.425]
set title 'cyclic\_25 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/cyclic_25/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_25/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_25/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_25/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_25/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'cyclic\_25 / indexscan / eic=0'

plot "data/ryzen/cyclic_25/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_25/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_25/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_25/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_25/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'cyclic\_25 / seqscan / eic=0'

plot "data/ryzen/cyclic_25/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/cyclic_25/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/cyclic_25/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/cyclic_25/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/cyclic_25/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear / eic=0' font 'Verdana Bold,12'
set xrange[0.00099:100]
set yrange[0.01:9013.744]
set title 'linear / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/linear/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear / indexscan / eic=0'

plot "data/ryzen/linear/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear / seqscan / eic=0'

plot "data/ryzen/linear/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_1 / eic=0' font 'Verdana Bold,12'
set xrange[0.00049:100]
set yrange[0.01:25189.364]
set title 'linear\_1 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/linear_1/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_1 / indexscan / eic=0'

plot "data/ryzen/linear_1/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_1 / seqscan / eic=0'

plot "data/ryzen/linear_1/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_1/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_1/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_1/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_1/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_10 / eic=0' font 'Verdana Bold,12'
set xrange[0.0004:100]
set yrange[0.01:26621.676]
set title 'linear\_10 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/linear_10/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_10 / indexscan / eic=0'

plot "data/ryzen/linear_10/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_10 / seqscan / eic=0'

plot "data/ryzen/linear_10/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_10/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_10/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_10/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_10/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / linear\\_25 / eic=0' font 'Verdana Bold,12'
set xrange[0.00045:100]
set yrange[0.01:26397.546]
set title 'linear\_25 / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/linear_25/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_25/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_25/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_25/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_25/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'linear\_25 / indexscan / eic=0'

plot "data/ryzen/linear_25/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_25/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_25/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_25/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_25/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'linear\_25 / seqscan / eic=0'

plot "data/ryzen/linear_25/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/linear_25/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/linear_25/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/linear_25/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/linear_25/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
set title 'timing (cold) / uniform / eic=0' font 'Verdana Bold,12'
set xrange[0.00067:100]
set yrange[0.01:28523.181]
set title 'uniform / 0 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'timing (cold)'

plot "data/ryzen/uniform/bitmapscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/bitmapscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/bitmapscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/bitmapscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/bitmapscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

unset ylabel

set title 'uniform / indexscan / eic=0'

plot "data/ryzen/uniform/indexscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/indexscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/indexscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/indexscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/indexscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"

set title 'uniform / seqscan / eic=0'

plot "data/ryzen/uniform/seqscan/off-0-sync-3-32GB-4-17.data"      using 1:3 with points pt 7 ps 0.75 title "17", \
     "data/ryzen/uniform/seqscan/off-0-sync-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / sync", \
     "data/ryzen/uniform/seqscan/off-0-io_uring-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / io\\_uring", \
     "data/ryzen/uniform/seqscan/off-0-worker-3-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (3)", \
     "data/ryzen/uniform/seqscan/off-0-worker-12-32GB-4-18.data"      using 1:3 with points pt 7 ps 0.75 title "18 / worker (12)"
