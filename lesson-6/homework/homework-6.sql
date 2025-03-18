create database homework6
--Puzzle 1: Finding Distinct Values
--Question: Explain at least two ways to find distinct values based on two columns.

--Sample data:
CREATE TABLE InputTbl (col1 VARCHAR(1), col2 VARCHAR(1))
INSERT INTO InputTbl VALUES 
('a', 'b'),
('a', 'b'),
('b', 'a'),
('c',  'd'),
('c', 'd'),
('m', 'n'),
('n', 'm')
select * from InputTbl

select  distinct least (col1, col2) as col1, GREATEST( col1, col2) as col2 from InputTbl

--Might be solved like following	
select distinct col1 from InputTbl
union
select distinct col2 from InputTbl

--Puzzle 2: Counting 'a' for Different Types
--Question: Count occurrences of 'a' in columns Value1, Value2, and Value3 for different Typs.

--Sample Data:
CREATE TABLE GroupbyMultipleColumns ( ID INT, Typ VARCHAR(1), Value1 VARCHAR(1), Value2 VARCHAR(1), Value3 VARCHAR(1) );

INSERT INTO GroupbyMultipleColumns(ID, Typ, Value1, Value2, Value3) VALUES (1, 'I', 'a', 'b', ''), (2, 'O', 'a', 'd', 'f'), (3, 'I', 'd', 'b', ''), (4, 'O', 'g', 'l', ''), (5, 'I', 'z', 'g', 'a'), (6, 'I', 'z', 'g', 'a');

select* from GroupbyMultipleColumns

select Typ,
SUM(case Value1 when 'a' then 1 else 0 end)+
SUM(case Value2 when 'a' then 1 else 0 end)+
SUM(case Value3 when 'a' then 1 else 0 end) as Counts
from GroupbyMultipleColumns group by Typ 


-- Puzzle 3
create TABLE [dbo].[TestMultipleZero]
(
    [A] [int] NULL,
    [B] [int] NULL,
    [C] [int] NULL,
    [D] [int] NULL
)
GO
 
--Insert Data
INSERT INTO [dbo].[TestMultipleZero](A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0)
	select* from [dbo].[TestMultipleZero]

	Select * from [dbo].[TestMultipleZero]
	where A<>0 or B<>0 or C<>0 or D<>0
	
	---Might be solved like this
	Select * from [dbo].[TestMultipleZero]
	where A+B+C+D<>0



---Puzzle 4: Finding Duplicate Values
--Question: Find values that appear more than once in the table.

--Sample Data:
CREATE TABLE TESTDuplicateCount ( ID INT, EmpName VARCHAR(100), EmpDate DATETIME );

INSERT INTO TESTDuplicateCount(ID,EmpName,EmpDate) VALUES (1,'Pawan','2014-01-05'), (2,'Pawan','2014-03-05'),
(3,'Pawan','2014-02-05'), (4,'Manisha','2014-07-05'), (5,'Sharlee','2014-09-05'),
(6,'Barry','2014-02-05'), (7,'Jyoti','2014-04-05'), (8,'Jyoti','2014-05-05');
select * from TESTDuplicateCount

Select EmpName, Count(EmpName) as DuplicateCount
from TESTDuplicateCount group by EmpName having Count(EmpName)>=2 

--Puzzle 5
	CREATE TABLE FruitCount
(
    Name VARCHAR(20),
    Fruit VARCHAR(25)
);

INSERT INTO FruitCount(Name, Fruit) 
VALUES
    ('Neeraj', 'MANGO'),
    ('Neeraj', 'MANGO'),
    ('Neeraj', 'MANGO'),
    ('Neeraj', 'APPLE'),
    ('Neeraj', 'ORANGE'),
    ('Neeraj', 'LICHI'),
    ('Neeraj', 'LICHI'),
    ('Neeraj', 'LICHI'),
    ('Isha', 'MANGO'),
    ('Isha', 'MANGO'),
    ('Isha', 'APPLE'),
    ('Isha', 'ORANGE'),
    ('Isha', 'LICHI'),
    ('Gopal', 'MANGO'),
    ('Gopal', 'MANGO'),
    ('Gopal', 'APPLE'),
    ('Gopal', 'APPLE'),
    ('Gopal', 'APPLE'),
    ('Gopal', 'ORANGE'),
    ('Gopal', 'LICHI'),
    ('Mayank', 'MANGO'),
    ('Mayank', 'MANGO'),
    ('Mayank', 'APPLE'),
    ('Mayank', 'APPLE'),
    ('Mayank', 'ORANGE'),
    ('Mayank', 'LICHI');
	
	select* from FruitCount

	Select Name,
	Sum(case  Fruit when 'MANGO' then 1 else 0 end) as Mango,
	SUM(case Fruit when 'APPLE' then 1 else 0 end) as Apple,
	SUM(case Fruit when 'LICHI' then 1 else 0 end) as Lichi,
	SUM(case Fruit when 'ORANGE' then 1 else 0 end) as Orange
	from FruitCount group by Name

	--Might be solved like that
	select Name,Fruit, count(name) as FruitNumber
	from FruitCount group by Name, Fruit

