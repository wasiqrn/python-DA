CREATE DATABASE school;
USE school;
create table students(
id int,
name varchar(50),
age int,
marks int
);
select * from school.students;
INSERT INTO school.students values
(1,'aryan',23,90),
(2,'wasiq',22,95),
(4,'kohli',30,80),
(3,'mohan',24,92),
(5,'kashish',20,76);
select *from school.students;
select * 
from school.students
 where marks >85;
 
select * 
from school.students
 where age=20;
 
 select * 
from school.students
 where name ="wasiq";
 
 
 select * 
from school.students
 where age>=23 and marks >=85;
 