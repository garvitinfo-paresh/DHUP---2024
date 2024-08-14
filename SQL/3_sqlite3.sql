CREATE TABLE Employees
(
emp_ID varchar(25) PRIMARY KEY,
emp_name varchar(25),
emp_city varchar(25),
emp_deptID varchar(25) 
)

CREATE TABLE Department
(
emp_deptID varchar(25) PRIMARY KEY,
emp_dept_name varchar(25),
constraint dept_fk FOREIGN KEY(emp_deptID) REFERENCES Employees(emp_deptID) 
)

INSERT INTO Employees VALUES(01, 'Rajesh', 'Surat', 01);
INSERT INTO Employees VALUES(02, 'Mahi', 'Vadodara', 04);
INSERT INTO Employees VALUES(03, 'Amarsingh', 'Panjab', 02);
INSERT INTO Employees VALUES(04, 'Kenil', 'Banglore', 04);
INSERT INTO Employees VALUES(05, 'Ammar', 'Vapi', 04);
INSERT INTO Employees VALUES(06, 'Nevil', 'Mumbai', 04);
INSERT INTO Employees VALUES(07, 'Ronak', 'Amritsar', 02);
INSERT INTO Employees VALUES(08, 'Ronak', 'Amritsar', 02);
INSERT INTO Employees VALUES(09, 'Arav', 'Mumabi', 04);
INSERT INTO Employees VALUES(10, 'Khyati', 'Nasik', 03);

INSERT INTO Department VALUES(01,'Admin');
INSERT INTO Department VALUES(02,'Finance');
INSERT INTO Department VALUES(03,'HR');
INSERT INTO Department VALUES(04,'Developer');

select * from Employees ,Department
where Employees.emp_deptID = Department.emp_deptID;


select e.emp_name,e.emp_city,d.emp_dept_name 
from Employees e,Department d
where e.emp_deptID = d.emp_deptID;

.mode table on

-- https://www.sqlite.org/lang_transaction.html


-- BEGIN TRANSACTION Command
-- Transactions can be started using BEGIN TRANSACTION or simply BEGIN command. Such transactions usually persist until the next COMMIT or ROLLBACK command is encountered. However, a transaction will also ROLLBACK if the database is closed or if an error occurs. Following is the simple syntax to start a transaction.

-- Syntax
-- BEGIN;
-- or 
-- BEGIN TRANSACTION;

-- COMMIT Command
-- COMMIT command is the transactional command used to save changes invoked by a transaction to the database.

-- COMMIT command saves all transactions to the database since the last COMMIT or ROLLBACK command.

-- Syntax
-- COMMIT;
-- or
-- END TRANSACTION;


-- ROLLBACK Command
-- ROLLBACK command is the transactional command used to undo transactions that have not already been saved to the database.

-- ROLLBACK command can only be used to undo transactions since the last COMMIT or ROLLBACK command was issued.

-- Syntax
-- ROLLBACK;


CREATE TABLE accounts ( 
	account_no INTEGER NOT NULL, 
	balance DECIMAL NOT NULL DEFAULT 0,
	PRIMARY KEY(account_no),
        CHECK(balance >= 0)
);

CREATE TABLE account_changes (
	change_no INT NOT NULL PRIMARY KEY,
	account_no INTEGER NOT NULL, 
	flag TEXT NOT NULL, 
	amount DECIMAL NOT NULL, 
	changed_at TEXT NOT NULL 
);

INSERT INTO accounts VALUES (101,2000);
INSERT INTO accounts VALUES (102,5000);
INSERT INTO accounts VALUES (103,10000);
INSERT INTO accounts VALUES (104,20000);
INSERT INTO accounts VALUES (105,1000);

-- SELECT * FROM accounts;

BEGIN TRANSACTION;	

UPDATE accounts
   SET balance = balance - 1000
 WHERE account_no = 101;

UPDATE accounts
   SET balance = balance + 1000
 WHERE account_no = 103;
 
INSERT INTO account_changes VALUES(501,101,'-',1000,datetime('now'));

INSERT INTO account_changes VALUES(502,103,'+',1000,datetime('now'));

COMMIT;

SELECT * FROM accounts;
SELECT * FROM account_changes;

drop table accounts;
drop table account_changes;


BEGIN TRANSACTION;	
UPDATE accounts
   SET balance = balance - 1000
 WHERE account_no = 102;

UPDATE accounts
   SET balance = balance + 1000
 WHERE account_no = 104;
commit;