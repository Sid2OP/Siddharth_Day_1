USE revature;

CREATE table Employees(
EmployeeID INT Primary Key,
FirstName VARCHAR(50) Not Null,
LastName VARCHAR(50) Not Null,
Email VARCHAR(100) Not Null,
Salary INT Not Null,
Department VARCHAR(50)
);

INSERT INTO Employees VALUES ( 1,  'John',  'Doe',  'john.doe@company.com',  60000,  'Marketing'),
( 2, 'Jane', 'Smith', 'jane.smith@company.com', 75000, 'Sales'),
( 3, 'Michael', 'Johnson', 'michael.johnson@company.com', 85000, 'Marketing'),
( 4, 'Emily', 'Williams', 'emily.williams@company.com', 72000, 'IT'),
( 5, 'David', 'Brown', 'david.brown@company.com', 65000, 'Sales'),
( 6, 'Sarah', 'Davis', 'sarah.davis@company.com', 90000, 'IT'),
( 7, 'Robert', 'Miller', 'robert.miller@company.com', 70000, 'Finance'),
( 8, 'Jessica', 'Wilson', 'jessica.wilson@company.com', 65000, 'Finance'),
( 9, 'Daniel', 'Anderson', 'daniel.anderson@company.com', 72000, 'IT'),
(10, 'Ashley', 'Taylor', 'ashley.taylor@company.com', 58000, 'Sales'),
( 11, 'William', 'Brown', 'william.brown@company.com', 78000, 'Marketing'),
(12, 'Sophia', 'Davis', 'sophia.davis@company.com', 62000, 'HR');

-- 1
ALTER TABLE Employees
ADD CONSTRAINT CHK_EmployeesSalary CHECK (Salary>0);
-- 2
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

ALTER TABLE Employees
ADD DepartmentID INT;



ALTER TABLE Employees
ADD CONSTRAINT FK_Employees
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

-- 3
ALTER TABLE Employees
ADD CONSTRAINT UC_Email UNIQUE (Email);

-- 4
ALTER TABLE Departments
ADD CONSTRAINT PK_Person PRIMARY KEY (DepartmentID);


-- 5
CREATE TABLE Projects (
    ProjectID INT ,
    ProjectName VARCHAR(50) 
);

ALTER TABLE Projects
ADD DepartmentID INT;

Alter TABLE Projects 
ADD CONSTRAINT FK_Projects 
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);


-- 6
INSERT INTO Employees 
VALUES (13, 'Alice', 'Green', 'alice.green@company.com', 70000, 10);

-- 7
INSERT INTO Employees
VALUES (14, 'Sonia', 'Travis', 'sophia.davis@company.com', 62000, 'HR');

-- 8
DELETE FROM Departments
WHERE DepartmentID = 1;
 
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (1, 'Marketing'),
    (2, 'Sales'),
    (3, 'IT'),
    (4, 'Finance'),
    (5, 'HR');
    
DELETE FROM Departments
WHERE DepartmentID = 2;

-- 9
UPDATE Employees
SET DepartmentID = 10
WHERE EmployeeID = 1;

DROP TABLE courses;
DROP TABLE departments;
ALTER TABLE Employees
DROP CONSTRAINT FK_Employees;



