-- for create database
sqlite3 test.db;
or
sqlite3

-- for open database
.open test.db

-- for retrive  database
.databases

-- for save database
.save test.db

-- create table
create table info1(id int primary key,name text,address varchar);
insert into info1 values(1,'Raj','Surat');
insert into info1 values(2,'Rajesh','Vapi');
insert into info1 values(3,'Jay','Mumbai');
insert into info1 values(4,'Rainesh','Vadodara');
insert into info1 values(5,'Ajay','Surat');

-- for retrive table
.table


Last login: Tue Jul 16 11:08:19 on ttys000
(base) pareshrajput@Pareshs-MacBook-Air ~ % cd sqlite
(base) pareshrajput@Pareshs-MacBook-Air sqlite % LS
sqldiff			sqlite3_analyzer	test1.db
sqlite3			test.db
(base) pareshrajput@Pareshs-MacBook-Air sqlite % sqlite3
SQLite version 3.37.0 2021-12-09 01:34:53
Enter ".help" for usage hints.
Connected to a transient in-memory database.
Use ".open FILENAME" to reopen on a persistent database.
sqlite> .databases
main: "" r/w
sqlite> .open test1.db
sqlite> .databases
main: /Users/pareshrajput/sqlite/test1.db r/w
sqlite> create table info(id int,name text,address varchar);
sqlite> .tables
info
sqlite> select * from info;
sqlite> insert into info values(1,'Raj','Surat');
sqlite> select * from info;
1|Raj|Surat
sqlite> insert into info values(2,'Rajesh','Vapi');
sqlite> insert into info values(3,'Jay','Mumbai');
sqlite> insert into info values(4,'Rainesh','Vadodara');
sqlite> insert into info values(5,'Ajay','Surat');
sqlite> select * from info;
1|Raj|Surat
2|Rajesh|Vapi
3|Jay|Mumbai
4|Rainesh|Vadodara
5|Ajay|Surat
sqlite> insert into info values(5,'Ajay','Surat');
sqlite> select * from info;
1|Raj|Surat
2|Rajesh|Vapi
3|Jay|Mumbai
4|Rainesh|Vadodara
5|Ajay|Surat
5|Ajay|Surat
sqlite> create table info1(id int primary key,name text,address varchar);
sqlite> insert into info1 values(1,'Raj','Surat');
sqlite> insert into info1 values(2,'Rajesh','Vapi');
sqlite> insert into info1 values(3,'Jay','Mumbai');
sqlite> insert into info1 values(4,'Rainesh','Vadodara');
sqlite> insert into info1 values(5,'Ajay','Surat');
sqlite> 
sqlite> select * from info1;
1|Raj|Surat
2|Rajesh|Vapi
3|Jay|Mumbai
4|Rainesh|Vadodara
5|Ajay|Surat
sqlite> insert into info1 values(5,'Ajay','Surat');
Error: stepping, UNIQUE constraint failed: info1.id (19)
sqlite> 



-- show create statement
.schema <table-name>


-- describe table name
pragma table_info(<table-name>);