 --  to create new database
 CREATE DATABASE cricket;
 
 -- to use database
 USE cricket;
 
 -- create new table 
 CREATE TABLE score
( name varchar(50),
role  varchar(50),
runs int,
fall_of_wicket varchar(50)
);
 
 -- to view table
 
 SELECT *
 FROM score;
 
 -- to insert record into table
 
 INSERT score VALUE
 ('Rohit','Batiing',23,'B'),
('Gill','Batiing',3,'C'),
('Kohli','Batiing',89,'R'),
('sky','Batiing',08,'HW'),
('Jadeja','All_rounder',12,'NOT');

-- to create new column

ALTER TABLE score
ADD jersy_no int; 

-- now again insert record into new column

UPDATE score
SET jersy_no=45
WHERE name="Rohit";

-- when you want to fill in one query
UPDATE score
SET jersy_no= CASE name
WHEN 'Rohit' THEN 45
WHEN 'Gill' THEN 77
WHEN 'Kohli' THEN 18
WHEN 'Sky' THEN 63
WHEN 'Jadeja' THEN 8 
END;

SELECT * FROM score;

-- if you want a specially column

SELECT name,runs
FROM score;

-- to use where fumction(it will filtering the value according condition)

SELECT * 
FROM score 
WHERE runs>=24;

-- if you want to filtring multiple values (using OR )

SELECT * 
FROM score 
WHERE name='Kohli' 
OR Runs>10;

-- if you want to filtring multiple values (using AND )
SELECT * 
FROM score 
WHERE name='Kohli'
AND Runs>10;

-- in,like,between

-- in it will filtring multiple value 
SELECT * 
FROM score 
WHERE name
IN('Kohli','Rohit');

-- like it uses for pattern search

SELECT * 
FROM score 
WHERE name 
LIKE  'K%';

-- between it will find the resut in a range

SELECT * 
FROM score 
WHERE runs 
BETWEEN 0 AND 50;

-- order by (it will arrange data acording to asc or desc

SELECT * 
FROM score 
ORDER BY name
ASC;


-- order by with where

SELECT * 
FROM score 
WHERE role='Batiing'
ORDER BY runs 
ASC;

-- multiple condition

SELECT * 
FROM score 
WHERE role='Batiing'
AND 
runs>5 
ORDER BY runs;
