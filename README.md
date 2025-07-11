# Postgres io_method benchmark results

This repository stores results of benchmark comparing `io_methods` and
`io_workers` introduced in PG18, to help with picking the default value.
The benchmark runs queries on different types of scans, forcing scans
of various types, and varying a couple other parameters.

For defails see the benchmark script `test-full-cost-2.sh`, and also
`create2.sql` used to generate the data. This should produce the same
dataset the benchmark ran on:

```
$ sed 's/ROWS/10000000/g' create2.sql | sed 's/CYCLES/100/g' | psql testdb
```

Each table is about 4.3GB. Then to run the benchmark (takes days)

```
$ ./test-full-cost-2.sh testdb /mnt/pg/data-directory 60000
```

The results from two machines are in CSV files

* results-ryzen.csv
* results-xeon.csv

and are processed by `process.sh` script, which builds the charts.


## charts

There's a lot of charts, for different "slices" of the results. Each PDF
has multiple plots with scan types (columns) and other parameters
(rows). The filenames determines the combination of parameters.

There are two cases:

* MACHINE-XAXIS-CACHING-SHAREDBUFF-DATASET-SCALING.pdf

* MACHINE-XAXIS-CACHING-SHAREDBUFF-EIC-SCALING.pdf

Where

* MACHINE - either "ryzen" or "xeon", determining the test system
* XAXIS - how is the selectivity on x-axis calculated (only "rows")
* CACHING - either "cold" (uncached data), or "warm" (cached data)
* SHAREDBUFF - `shared_buffers` values (4GB or 32GB)
* DATASET - one of the datasets created by `create2.sql` script
* EIC - value of `effective_io_concurrency` (0, 1, 16, 64)
* SCALING - how is the range of y-axis determined ("scaled" - all plots
  have the same y-range, "unscaled" - each plot has it's own y-range)

The "unscaled" makes it easy to either look at individual plots, while
"scaled" allows comparing the different scan types.

There's also "-log" version of each plot, with log-scale y-axis. This
makes it easier to see differences for runs with short durations.


## machines

* ryzen (~2024)
  * Ryzen 9 9900X (12 cores)
  * 64GB RAM
  * 4x NVMe SSD (Samsung 990 PRO 1TB) in RAID0

* xeon (~2016)
  * 2x Xeon 2699v4 (44 cores)
  * 64GB RAM
  * 1x NVMe SSD WDC Ultrastar DC SN640 960GB


## branches

There are multiple branches, with slightly views on the resutls, or
results from different runs:

* master
  * the main set of results, first run
  * ryzen: 32GB and 4GB shared buffers
  * xeon: 32GB
  * issue: PG17 was running with checksums off, PG18 has checksums on
* run2-17-checksums-on
  * second run, with the checksum issue fixed
  * ryzen: 32GB and 4GB shared buffers
  * xeon: 32GB
  * both PG17 and PG18 have checksums on 
* with-indexscan-prefetch
  * same results as "master", but charts include "index-prefetch" patch
* with-indexscan-prefetch-run2-17-checksums
  * same results as "run2", but charts include "index-prefetch" patch
