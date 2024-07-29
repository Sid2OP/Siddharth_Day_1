CREATE DATABASE school_management;

CREATE TABLE students1(
student_id INT PRIMARY KEY,
first_name VARCHAR(20),
last_name VARCHAR(20),
email VARCHAR(50),
phone_number INT,
date_of_birth DATE 
);

CREATE TABLE courses(
course_id INT PRIMARY KEY,
course_name VARCHAR(20),
course_description VARCHAR(100),
credits VARCHAR(50)
); 

ALTER TABLE students1
ADD grade VARCHAR(2);

ALTER TABLE students1 
MODIFY COLUMN phone_number VARCHAR(15);

INSERT INTO students1
VALUES (1,'sid','todkar','sid@gmail.com','9307327339','2001-02-24','8'),
(2,'ani','shinde','sni@gmail.com','123456789','2001-05-14','9'),
(3,'minu','thopte','minu@gmail.com','5446415765','2002-06-05','7');


INSERT INTO courses (course_id, course_name, course_description, credits)
VALUES (101, 'Mathematics', 'Introduction to basic mathematical concepts', '3 credits')
,(102, 'Physics', 'Fundamentals of mechanics and thermodynamics', '4 credits')
,(103, 'Computer Science', 'Basics of programming and algorithms', '3 credits');


INSERT INTO courses 
VALUES (104, 'Chemistry', 'Introduction to chemical principles and reactions', '3 credits')
,(105, 'Biology', 'Study of living organisms and life processes', '4 credits');


SELECT first_name,last_name,email from students1;

DROP TABLE students1;

DROP DATABASE school_management;






