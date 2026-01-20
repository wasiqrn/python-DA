-- create new database
CREATE DATABASE capgemini;

USE capgemini;
-- create new table
CREATE TABLE data_inf (
id int primary key,
Name varchar(50),
House varchar(50),
Title varchar(50),
Salary int
);

-- to see your creating table

select * from capgemini.data_inf;

-- to insert record

insert into data_inf values
(1,'mohan','B1','HR',29000),
(2,'sohan','c1','admin',90000),
(3,'rohan','d1','team_leader',39000),
(4,'hammad','E54','soft_dev',59000),
(5,'sanjay','B/1','DA',65000),
(6,'vijay','54B','DS',75000),
(7,'aryan','13/B','python_dev',34000),
(8,'arjun','19/P','SQL_dev',89000),
(9,'dinesh','20/E','HR',40000),
(10,'salman','c/2','admin',56000),
(11,'kohli','12/A','HR',43000),
(12,'rohit','10B','HR',67000),
(13,'abbas','A09','python_dev',87000),
(14,'saleem','A/1','HR',90000),
(15,'amir','AZ1','HR',91000);

select * from capgemini.data_inf;

-- add record into row

update capgemini.data_inf
set Mod_of_working='online'
where id=1;

-- to add new column 

alter table capgemini.data_inf
add Mod_of_working varchar(50);

-- insert record in row

update capgemini.data_inf
set mod_of_working='online'
where id=2;
select * from capgemini.data_inf;

update capgemini.data_inf
set Mod_of_working='online'
where Salary>66000;

update capgemini.data_inf
set Mod_of_working='offline'
where Salary<50000;