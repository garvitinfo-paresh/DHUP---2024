sqlite3
.open test1.db

.mode table on

.output mydb.sql
.dump

.mode csv
.output mycsv.csv
select * from info1;

.output stdout
.mode list
select * from info1;

.mode csv
.import mydata.csv info3;