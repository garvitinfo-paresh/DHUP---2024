-- Create Table
CREATE TABLE COMPANY(
   ID INT PRIMARY KEY     NOT NULL,
   NAME           TEXT    NOT NULL,
   AGE            INT     NOT NULL,
   ADDRESS        CHAR(50),
   SALARY         REAL
);

CREATE TABLE DEPARTMENT(
   ID INT PRIMARY KEY      NOT NULL,
   DEPT           CHAR(50) NOT NULL,
   EMP_ID         INT      NOT NULL
);
--- see table description
.schema COMPANY

--insert data
INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (1, 'Paul', 32, 'California', 20000.00 );

INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (2, 'Allen', 25, 'Texas', 15000.00 );

INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (3, 'Teddy', 23, 'Norway', 20000.00 );

INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (4, 'Mark', 25, 'Rich-Mond ', 65000.00 );

INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (5, 'David', 27, 'Texas', 85000.00 );

INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (6, 'Kim', 22, 'South-Hall', 45000.00 );


-- SQLite DISTINCT keyword is used in conjunction with SELECT statement to 
-- eliminate all the duplicate records and fetching only the unique records.
SELECT name FROM COMPANY;

SELECT DISTINCT name FROM COMPANY;

-- update query
UPDATE COMPANY SET ADDRESS = 'Texas' WHERE ID = 6;
UPDATE COMPANY SET ADDRESS = 'Texas', SALARY = 20000.00;


-- SQLite - Numeric Expression
SELECT (15 + 6) AS ADDITION

SELECT COUNT(*) AS "RECORDS" FROM COMPANY;

-- SQLite - Date Expressions
SELECT CURRENT_TIMESTAMP;

-- comparison or logical operators using where
SELECT * FROM COMPANY WHERE AGE >= 25 AND SALARY >= 65000;

SELECT * FROM COMPANY WHERE AGE >= 25 OR SALARY >= 65000;

SELECT * FROM COMPANY WHERE AGE IS NOT NULL;

-- Like operator
-- SQLite LIKE operator is used to match text values against a pattern using wildcards. 
-- If the search expression can be matched to the pattern expression, the LIKE operator 
-- will return true, which is 1. There are two wildcards used in conjunction with the 
-- LIKE operator. 
-- The percent sign (%)
-- The underscore (_)
-- The percent sign represents zero, one, or multiple numbers or characters. 
-- The underscore represents a single number or character. These symbols can be 
-- used in combinations.
SELECT * FROM COMPANY WHERE AGE LIKE '2%';
SELECT * FROM COMPANY WHERE ADDRESS  LIKE '%-%';

-- SQLite GLOB operator is used to match only text values against a pattern using wildcards.
--  If the search expression can be matched to the pattern expression, 
--  the GLOB operator will return true, which is 1. Unlike LIKE operator, 
--  GLOB is case sensitive and it follows syntax of UNIX for specifying 
--  THE following wildcards.

-- The asterisk sign (*)
-- The question mark (?)
-- The asterisk sign (*) represents zero or multiple numbers or characters. 
-- The question mark (?) represents a single number or character.
SELECT * FROM COMPANY WHERE AGE  GLOB '2*';
SELECT * FROM COMPANY WHERE ADDRESS  GLOB '*-*';

-- Following SELECT statement lists down all the records where NAME starts 
-- with 'Ki', does not matter what comes after 'Ki'.
SELECT * FROM COMPANY WHERE NAME LIKE 'Ki%';

-- Following SELECT statement lists down all the records where NAME starts with 'Ki',
--  does not matter what comes after 'Ki'.
SELECT * FROM COMPANY WHERE NAME GLOB 'Ki*';


-- Following SELECT statement lists down all the records
--  where AGE value is either 25 or 27.
SELECT * FROM COMPANY WHERE AGE IN ( 25, 27 );

-- Following SELECT statement lists down all the records
--  where AGE value is neither 25 nor 27.
SELECT * FROM COMPANY WHERE AGE NOT IN ( 25, 27 );

-- Following SELECT statement lists down all the records 
-- where AGE value is in BETWEEN 25 AND 27.
SELECT * FROM COMPANY WHERE AGE BETWEEN 25 AND 27;

-- Following SELECT statement makes use of SQL sub-query, where sub-query finds 
-- all the records with AGE field having SALARY > 65000 and later WHERE clause 
-- is being used along with EXISTS operator to list down all the records where 
-- AGE from the outside query exists in the result returned by the sub-query
SELECT AGE FROM COMPANY 
   WHERE EXISTS (SELECT AGE FROM COMPANY WHERE SALARY > 65000);

-- Following SELECT statement makes use of SQL sub-query where 
-- sub-query finds all the records with AGE field having SALARY > 65000 and 
-- later WHERE clause is being used along with > operator to list down all the records 
-- where AGE from the outside query is greater than the age in the result returned by 
-- the sub-query.

SELECT * FROM COMPANY 
   WHERE AGE > (SELECT AGE FROM COMPANY WHERE SALARY > 65000);


-- SQLite LIMIT clause is used to limit the data amount returned by the SELECT statement.
SELECT * FROM COMPANY LIMIT 6;

SELECT * FROM COMPANY LIMIT 3 OFFSET 2;

-- SQLite ORDER BY clause is used to sort the data in an ascending or descending order,
-- based on one or more columns

SELECT * FROM COMPANY ORDER BY SALARY ASC;

SELECT * FROM COMPANY ORDER BY NAME, SALARY ASC;

SELECT * FROM COMPANY ORDER BY NAME DESC;

-- SQLite GROUP BY clause is used in collaboration with the SELECT statement to 
-- arrange identical data into groups.

-- GROUP BY clause follows the WHERE clause in a SELECT statement and 
-- precedes the ORDER BY clause.
SELECT NAME, SUM(SALARY) FROM COMPANY GROUP BY NAME;

SELECT NAME, SUM(SALARY) FROM COMPANY GROUP BY NAME ORDER BY NAME;

SELECT NAME, SUM(SALARY) 
   FROM COMPANY GROUP BY NAME ORDER BY NAME DESC;

-- HAVING clause enables you to specify conditions that filter 
-- which group results appear in the final results.

-- The WHERE clause places conditions on the selected columns, 
-- whereas the HAVING clause places conditions on groups created by GROUP BY clause.

select address,sum(salary) from company group by address;

select address,sum(salary) from company group by address having age >23;

