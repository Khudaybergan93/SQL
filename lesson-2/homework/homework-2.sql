create database homework1
--task 1
create table [dbo].Salesman (Salesman_ID int, Name Varchar(40), City Varchar(40), Comission Varchar(40)) 
select* from [dbo].Salesman
insert into [dbo].Salesman values (5001, 'James Hoog', 'New York', 0.15)
insert into [dbo].Salesman values (5002, 'Nail Knite', 'Paris', 0.13)
insert into [dbo].Salesman values (5005, 'Pit Alex', 'London', 0.11)
insert into [dbo].Salesman values (5006, 'Mc Lyon', 'Paris', 0.14)
insert into [dbo].Salesman values (5007, 'Paul Adam', 'Rome', 0.13)
insert into [dbo].Salesman values (5003, 'Lauson Hen', 'San Jose', 0.12)

--task 6
/*The next task might be solved by 2 ways. the first one is the easiest. As we have already created Table, we can delete Columns for Salesman_ID and City by using Alter, drop funtions*/
select* from [dbo].Salesman
Alter table [dbo].Salesman
drop column Salesman_ID
Alter table [dbo].Salesman
drop column City
/*the next way in absence of the exact table is we create another table only including Name and Commission columns, skipping Salesman_ID and City*/
create table [dbo].Salesmannames (Name Varchar(40), Comission Varchar(40))
select* from [dbo].Salesmannames
insert into [dbo].Salesmannames values ('James Hoog', 0.15)
insert into [dbo].Salesmannames values ('Nail Knite', 0.13)
insert into [dbo].Salesmannames values ('Pit Alex', 0.11)
insert into [dbo].Salesmannames values ('Mc Lyon', 0.14)
insert into [dbo].Salesmannames values ('Paul Adam', 0.13)
insert into [dbo].Salesmannames values ('Lauson Hen', 0.12)


--task 8 First we create table for 5 columns after that we can drop 4 columns except salesman_id.
create table [dbo].Orders (ord_no int, purch_amt varchar(40), ord_date varchar(40), customer_id int, salesman_id int) 
select* from [dbo].Orders 
insert into [dbo].Orders values (70001, 150.5, 2012-10-05, 3005, 5002)
insert into [dbo].Orders values (70009, 270.65, 2012-09-10, 3001, 5005)
insert into [dbo].Orders values (70002, 65.26, 2012-10-05, 3002, 5001)
insert into [dbo].Orders values (70004, 110.5, 2012-08-17, 3009, 5003)
insert into [dbo].Orders values (70007, 948.5, 2012-09-10, 3005, 5002)
insert into [dbo].Orders values (70005, 2400.6, 2012-07-27, 3007, 5001)
insert into [dbo].Orders values (70008, 5760, 2012-09-10, 3002, 5001)
insert into [dbo].Orders values (70010, 1983.43, 2012-10-10, 3004, 5006)
Alter table [dbo].Orders
drop column ord_no
Alter table [dbo].Orders
drop column purch_amt
Alter table [dbo].Orders
drop column ord_date
Alter table [dbo].Orders
drop column customer_id
/* as requested task 8 itself, only salesman_id is left in the table*/

--task 9
create table [dbo].Sale (Salesman_ID int, Name Varchar(40), City Varchar(40), Comission Varchar(40)) 
select* from [dbo].Sale
insert into [dbo].Sale values (5001, 'James Hoog', 'New York', 0.15)
insert into [dbo].Sale values (5002, 'Nail Knite', 'Paris', 0.13)
insert into [dbo].Sale values (5005, 'Pit Alex', 'London', 0.11)
insert into [dbo].Sale values (5006, 'Mc Lyon', 'Paris', 0.14)
insert into [dbo].Sale values (5007, 'Paul Adam', 'Rome', 0.13)
insert into [dbo].Sale values (5003, 'Lauson Hen', 'San Jose', 0.12)
--as told in task 9 we keep only people who live in city Paris and their names
delete from [dbo].Sale where city<>'Paris'
Alter table [dbo].Sale 
drop column Salesman_ID
Alter table [dbo].Sale 
drop column Comission

--Task 10
Create table [dbo].Customer (customer_id int, cust_name Varchar(40), city Varchar(40), grade int, salesman_id int) 
select* from [dbo].Customer 
insert into [dbo].Customer values (3002, 'Nick Rimando', 'New York', 100, 5001)
insert into [dbo].Customer values (3007, 'Brad Davis', 'New York', 200, 5001)
insert into [dbo].Customer values (3005, 'Graham Zusi', 'California', 200, 5002)
insert into [dbo].Customer values (3008, 'Julian Green', 'London', 300, 5002)
insert into [dbo].Customer values (3004, 'Fabian Johnson', 'Paris',  300, 5006)
insert into [dbo].Customer values (3009, 'Geoff Cameron', 'Berlin', 100, 5003)
insert into [dbo].Customer values (3003, 'Jozy Altidor',  'Moscow', 200, 5007)
insert into [dbo].Customer values (3001, 'Brad Guzan', 'London', Null, 5005)
delete from [dbo].Customer 
where grade<>200
/* when the raw table was provided grade column vas empty for Customer_id 3001 (Brad Guzan), therefore the system automatically can not delete this as it is uncertain whether it is equal to 200 or not*/


--task 11
create table [dbo].orders2 (ord_no int, purch_amt Varchar(40), ord_date date, customer_id int, salesman_id int)
select* from [dbo].orders2 
insert into [dbo].orders2 values (70001, 150.5, '2012-10-05', 3005, 5002)
insert into [dbo].orders2 values (70009, 270.65, '2012-09-10', 3001, 5005)
insert into [dbo].orders2 values (70002, 65.26, '2012-10-05',  3002, 5001)
insert into [dbo].orders2 values (70004,  110.5,  '2012-08-17',  3009,  5003)
insert into [dbo].orders2 values  (70007, 948.5,  '2012-09-10', 3005, 5002)
insert into [dbo].orders2 values (70005, 2400.6, '2012-07-27', 3007, 5001)
insert into [dbo].orders2 values (70008, 5760, '2012-09-10', 3002, 5001)
insert into [dbo].orders2 values (70010, 1983.43,  '2012-10-10', 3004, 5006)
insert into [dbo].orders2 values (70003, 2480.4, '2012-10-10', 3009, 5003)
Alter table [dbo].orders2
drop column customer_id
delete from [dbo].orders2
where salesman_id<>5001

--task 12
create table [dbo].noble_win (Year int, Subject Varchar(40), Winner Varchar(40), Country Varchar(40), Category Varchar(40))  
select* from [dbo].noble_win
insert into [dbo].noble_win values (1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist')
insert into [dbo].noble_win values (1970, 'Physics', 'Louis Neel', 'France', 'Scientist')
insert into [dbo].noble_win values (1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist')
insert into [dbo].noble_win values (1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist')
insert into [dbo].noble_win values (1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist')
insert into [dbo].noble_win values (1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist')
insert into [dbo].noble_win values (1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist'),(1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist')
insert into [dbo].noble_win values (1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist'),(1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist'),(1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor'),(1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist')
insert into [dbo].noble_win values (1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economist'),(1978, 'Peace', 'Anwar al-Sadat', 'Egypt', 'President'),(1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister'),(1987, 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist'),(1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist')
insert into [dbo].noble_win values (1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),(1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist'),(1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister'),(1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist'),(1987, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist')
insert into [dbo].noble_win values (1987, 'Economics', 'Robert Solow', 'USA', 'Economist'),(1994, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist')
delete from [dbo].noble_win
where year<>1970 
select* from [dbo].noble_win
Alter table [dbo].noble_win
drop column country, Category
--Task 13 in the first link task
create table noble_win2 (Year int, Subject Varchar(40), Winner Varchar(40), Country Varchar(40), Category Varchar(40))
select into noble_win2 from [dbo].noble_win 
insert into [dbo].noble_win2 values (1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist')
insert into [dbo].noble_win2 values (1970, 'Physics', 'Louis Neel', 'France', 'Scientist')
insert into [dbo].noble_win2 values (1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist')
insert into [dbo].noble_win2 values (1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist')
insert into [dbo].noble_win2 values (1970, 'Physiology', 'Bernard Katz', 'Germany', 'Scientist')
insert into [dbo].noble_win2 values (1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist')
insert into [dbo].noble_win2 values (1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist'),(1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist')
insert into [dbo].noble_win2 values (1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist'),(1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist'),(1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor'),(1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist')
insert into [dbo].noble_win2 values (1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economist'),(1978, 'Peace', 'Anwar al-Sadat', 'Egypt', 'President'),(1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister'),(1987, 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist'),(1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist')
insert into [dbo].noble_win2 values (1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),(1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist'),(1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister'),(1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist'),(1987, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist')
insert into [dbo].noble_win2 values (1987, 'Economics', 'Robert Solow', 'USA', 'Economist'),(1994, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist')

select* from noble_win2 
select winner from noble_win2 where Year=1971 and Subject='Literature'


------Task 14 from the first link of tasks
select* from noble_win2
select Year, Subject from noble_win2 where winner='Dennis Gabor'


--Task 15 from the first link of tasks
select* from noble_win2 
select winner from noble_win2 where subject='Physics'and Year>=1950


---Task 16 from the first link of tasks
select Year, subject, winner, country from noble_win2 where Subject='Chemistry' and Year>=1965 and Year<=1975


----Task 17 from the first link of tasks
select Year, subject, winner, country, Category from noble_win2 
where Category='Prime Minister' and Year>1972


---Task 18 from the first link of tasks
select* from noble_win2 
Select Year, subject, winner, country, Category from noble_win2 
where winner like 'Louis%'


---Task 19 from the first link of tasks
select* from noble_win2 
Select Year, subject, winner, country, Category from noble_win2 
where Subject='Physics'and Year=1970 union 
Select Year, subject, winner, country, Category from noble_win2 
where Subject='Economics'and Year=1971


---Task 20 from the first link of tasks
select* from noble_win2 
Select Year, subject, winner, country, Category from noble_win2 
where Subject Not IN ('Physiology','Economics')


---Task 21 from the first link of tasks
select* from noble_win2 
Select Year, subject, winner, country, Category from noble_win2 
where subject='Physiology' and Year<1971 union 
Select Year, subject, winner, country, Category from noble_win2 
where subject='Peace' and Year>=1974


---Task 22 from the first link of tasks
select* from noble_win2 
Select Year, subject, winner, country, Category from noble_win2 
where winner='Johannes Georg Bednorz'


---Task 23 from the first link of tasks
select* from noble_win2
select Year, subject, winner, country, Category from noble_win2 
where Subject Not like 'P%'


---Task 24 from the first link of tasks
select* from noble_win2
select Year, winner, country, Category, subject from noble_win2 
where Year=1970 and Subject Not IN ('Chemistry','Economics') 


---Task 25 from the first link of tasks
create table Items (PRO_ID int, PRO_NAME Varchar(40),PRO_PRICE Float, PRO_COM int)
select* from Items
insert into Items values (101, 'Mother Board', 3200.00, 15),(102, 'Key Board', 450.00, 16),(103, 'ZIP drive', 250.00, 14),(104, 'Speaker', 550.00, 16)
insert into Items values (107, 'CD drive', 800.00, 12),(108, 'Printer', 2600.00, 13),(109, 'Refill cartridge', 350.00, 13),(110, 'Mouse', 250.00, 12)
select PRO_ID, PRO_NAME, PRO_PRICE, PRO_COM from Items
where PRO_PRICE>=200 and PRO_PRICE<=600


---Task 26 from the first link of tasks
select* from Items
select AVG(PRO_PRICE) from Items
where PRO_COM=16


------Task 28 from the first link of tasks
select* from Items
select pro_name, pro_price from Items
where pro_price>=250 order by pro_price desc, pro_name asc


---Task 27 from the first link of tasks
select* from Items
sp_rename 'Items.pro_name', 'Item Name', 'Column'
sp_rename 'Items.pro_price', 'Price in Rs', 'Column'

---next tasks requires pro_name and, pro_price. Therefore to create easiness, I have to change column names for pro_name and, pro_price, Although it is not indicated in the task itself    
---Task 29 from the first link of tasks
select* from Items
sp_rename 'Items.Item Name', 'pro_name', 'Column'
sp_rename 'Items.Price in Rs', 'pro_price', 'Column'
select AVG(pro_price), pro_com from Items group by pro_com


---Task 30 from the first link of tasks
select* from Items
select pro_name, pro_price from Items
where pro_price= (Select MIN(pro_price) from Items)


---Task 31 from the first link of tasks
create table details (EMP_IDNO int, EMP_FNAME Varchar(40), EMP_LNAME Varchar(40), EMP_DEPT int)
select* from details
insert into details values (127323, 'Michale','Robbin', 57),(526689, 'Carlos','Snares', 63),(843795, 'Enric','Dosio',57),(328717,'Jhon','Snares', 63)
insert into details values (444527,'Joseph','Dosni', 47),(659831, 'Zanifer','Emily', 47),(847674, 'Kuleswar','Sitaraman', 57),(748681, 'Henrey', 'Gabriel', 47)
insert into details values (555935, 'Alex', 'Manuel', 57),(539569, 'George', 'Mardy', 27)
insert into details values (733843, 'Mario', 'Saule', 63),(631548, 'Alan', 'Snappy',27),(839139, 'Maria','Foster',57)
select Distinct EMP_LNAME from details

---Task 32 from the first link of tasks
Select EMP_IDNO, EMP_FNAME, EMP_LNAME, EMP_DEPT from details
where EMP_LNAME='Snares'

---Task 33 from the first link of tasks
Select EMP_IDNO, EMP_FNAME, EMP_LNAME, EMP_DEPT from details
where EMP_DEPT=57

