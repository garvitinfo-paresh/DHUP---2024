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

select e.emp_name,e.emp_city,d.emp_dept_name from Employees e,Department d
where e.emp_deptID = d.emp_deptID;


