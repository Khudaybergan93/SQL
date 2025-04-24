create database homew6
use homew6
---1 st puzzle
CREATE TABLE InputTbl ( col1 VARCHAR(10), col2 VARCHAR(10) ); 
INSERT INTO InputTbl (col1, col2) VALUES ('a', 'b'), ('a', 'b'), ('b', 'a'), ('c', 'd'), ('c', 'd'), ('m', 'n'), ('n', 'm');

select distinct  least (col1, col2) as col1, GREATEST( col1, col2) as col2 from InputTbl

--Might be solved like following	
select distinct col1 from InputTbl
union
select distinct col2 from InputTbl

---2 nd puzzle
CREATE TABLE TestMultipleZero ( A INT NULL, B INT NULL, C INT NULL, D INT NULL );

INSERT INTO TestMultipleZero(A,B,C,D) VALUES (0,0,0,1), (0,0,1,0), (0,1,0,0), (1,0,0,0), (0,0,0,0), (1,1,1,0);

select * from TestMultipleZero

Select * from TestMultipleZero
where A+B+C+D<>0

---3 rd puzzle
create table section1(id int, name varchar(20)) insert into section1 values (1, 'Been'), (2, 'Roma'), (3, 'Steven'), (4, 'Paulo'), (5, 'Genryh'), (6, 'Bruno'), (7, 'Fred'), (8, 'Andro')

select * from section1

SELECT * FROM section1 WHERE id % 2 <> 0;

---4 th Puzzle
-- Person with the smallest id

SELECT top 1 id,Name FROM section1 
order by id asc

--Puzzle 5:
---Person with the highest id
 SELECT top 1 id,Name FROM section1 
order by id desc

--Puzzle 6: 
--People whose name starts with b 
select * from section1
where Name like 'b%'

---Puzle 7: 
--Write a query to return only the rows where the code contains the literal underscore _ (not as a wildcard).
CREATE TABLE ProductCodes ( Code VARCHAR(20) );

INSERT INTO ProductCodes (Code) VALUES ('X-123'), ('X_456'), ('X#789'), ('X-001'), ('X%202'), ('X_ABC'), ('X#DEF'), ('X-999');

select Code from ProductCodes
where Code like '%[_]%'