USE revature;

CREATE table Employees(
EmployeeID INT Primary Key,
FirstName VARCHAR(50) Not Null,
LastName VARCHAR(50) Not Null,
Email VARCHAR(100) Not Null UNIQUE,
Salary INT Not Null,
DepartmentID INT
);

INSERT INTO Employees VALUES ( 1,  'John',  'Doe',  'john.doe@company.com',  60000,  1),
( 2, 'Jane', 'Smith', 'jane.smith@company.com', 75000, 2),
( 3, 'Michael', 'Johnson', 'michael.johnson@company.com', 85000, 1),
( 4, 'Emily', 'Williams', 'emily.williams@company.com', 72000, 3),
( 5, 'David', 'Brown', 'david.brown@company.com', 65000, 2),
( 6, 'Sarah', 'Davis', 'sarah.davis@company.com', 90000, 3);

CREATE TABLE Departments(
DepartmentID INT Primary Key,
DepartmentName VARCHAR(50) Not Null
);

INSERT INTO Departments VALUES (1,'Marketing'),
( 2,  'Sales'),
( 3, 'IT'),
(4, 'Finance'),
(5, 'HR');

CREATE TABLE Projects (
ProjectID INT Primary Key,
ProjectName VARCHAR(100) Not Null,
DepartmentID INT,
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID));

INSERT INTO Projects 
VALUES
    (1, 'Project A', 1),
    (2, 'Project B', 2),
    (3, 'Project C', 3),
    (4, 'Project D', 4),
    (5, 'Project E', 5);
    
    
-- 1
ALTER TABLE Employees
ADD CONSTRAINT CHK_EmployeesSalary CHECK (Salary>0);

-- 2
ALTER TABLE Employees
ADD CONSTRAINT fk_department
FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID);

-- 3
ALTER TABLE Employees
ADD CONSTRAINT UC_Email UNIQUE (Email);

-- 4
ALTER TABLE Departments
ADD CONSTRAINT PK_Person PRIMARY KEY (DepartmentID);

-- 5
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
WHERE DepartmentID = 2;

-- 9
UPDATE Employees
SET DepartmentID = 10
WHERE EmployeeID = 1;











