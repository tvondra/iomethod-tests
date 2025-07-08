create table uniform (a double precision, b text) with (fillfactor=25);


create table linear (a double precision, b text) with (fillfactor=25);

create table linear_1 (a double precision, b text) with (fillfactor=25);

create table linear_10 (a double precision, b text) with (fillfactor=25);

create table linear_25 (a double precision, b text) with (fillfactor=25);


create table cyclic (a double precision, b text) with (fillfactor=25);

create table cyclic_1 (a double precision, b text) with (fillfactor=25);

create table cyclic_10 (a double precision, b text) with (fillfactor=25);

create table cyclic_25 (a double precision, b text) with (fillfactor=25);


with x as (select 100000 * random() AS x from generate_series(1,ROWS) s(i))
insert into uniform select x, sha256(x::text::bytea) from x;


with x as (select 100000 * (i::double precision / ROWS) AS x from generate_series(1,ROWS) s(i))
insert into linear select x, sha256(x::text::bytea) from x;

with x as (select 100000 * (i::double precision / ROWS) AS x from generate_series(1,ROWS) s(i))
insert into linear_1 select x + random_normal(0, 100000/100), sha256(x::text::bytea) from x;

with x as (select 100000 * (i::double precision / ROWS) AS x from generate_series(1,ROWS) s(i))
insert into linear_10 select x + random_normal(0, 10*100000/100), sha256(x::text::bytea) from x;

with x as (select 100000 * (i::double precision / ROWS) AS x from generate_series(1,ROWS) s(i))
insert into linear_25 select x + random_normal(0, 25*100000/100), sha256(x::text::bytea) from x;


with x as (select 100000 * (mod(i,(ROWS/CYCLES))::double precision / (ROWS/CYCLES)) AS x from generate_series(1,ROWS) s(i))
insert into cyclic select x, sha256(x::text::bytea) from x;

with x as (select 100000 * (mod(i,(ROWS/CYCLES))::double precision / (ROWS/CYCLES)) AS x from generate_series(1,ROWS) s(i))
insert into cyclic_1 select x + random_normal(0, 1*100000/100), sha256(x::text::bytea) from x;

with x as (select 100000 * (mod(i,(ROWS/CYCLES))::double precision / (ROWS/CYCLES)) AS x from generate_series(1,ROWS) s(i))
insert into cyclic_10 select x + random_normal(0, 10*100000/100), sha256(x::text::bytea) from x;

with x as (select 100000 * (mod(i,(ROWS/CYCLES))::double precision / (ROWS/CYCLES)) AS x from generate_series(1,ROWS) s(i))
insert into cyclic_25 select x + random_normal(0, 25*100000/100), sha256(x::text::bytea) from x;

create index on uniform (a);


create index on linear (a);

create index on linear_1 (a);

create index on linear_10 (a);

create index on linear_25 (a);


create index on cyclic (a);

create index on cyclic_1 (a);

create index on cyclic_10 (a);

create index on cyclic_25 (a);

vacuum analyze;

checkpoint;
