create database homework3
use homework3

--- 1 st question 
----Define and explain the purpose of BULK INSERT in SQL Server.
--Main purpose to use BULK INSERT in SQL is to transfer multimple data stored in many rows and columns at the same time

---2 nd question
--List four file formats that can be imported into SQL Server.
---The sources which used for transfer might be CSV (Comma-Separated Values), Excel sheet or even another SQL page,TXT (Text Files ),
---XML (eXtensible Markup Language), JSON (JavaScript Object Notation) 

--- 3 rd question
--Create a table Products with columns: ProductID (INT, PRIMARY KEY), ProductName (VARCHAR(50)), Price (DECIMAL(10,2)).

create table Products (ProductID int PRIMARY KEY, ProductName VARCHAR(50), Price DECIMAL (10,2))

--- 4 th question
--Insert three records into the Products table using INSERT INTO.
Insert into Products values (1, 'TV', 400), (2, 'Phone', 600), (3, 'Sunglasses', 50)

---5 th question
--Explain the difference between NULL and NOT NULL with examples.
---if we can take null (no data for a cell in the table)value as data and CELL might be blank without any data in table, 
--However, we specificly insert Not NULL in constraint, the table does not take Null data for that column and it must take exact data or value, for instance 
--for Null value and Not Null we use below Consumers table, 

create table Consumers (ConsumerID int primary key, ConsumerName varchar(50) Not NULL, Price float Null)
insert into Consumers values (1, 'James Hunt', NULL), (2, 'Robert Pike' , 3900)
--if we try insert Null value for column ConsumerName, it does not take this null value,
-- Additionally, Primary key constraint also does not take null value as it is a combination of Unique and null constraint

---6 th question
--Add a UNIQUE constraint to the ProductName column in the Products table.
ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName)

---7 th question
--Write a comment in a SQL query explaining its purpose.
select ConsumerName from Consumers
where Price>3000
--We are selecting ConsumerName in Consumers table whose salary is greater than 3000 here.

--8 th question
--Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE.
Create table Categories (CategoryID int PRIMARY KEY, CategoryName varchar(40) UNIQUE)

--9 th question
--Explain the purpose of the IDENTITY column in SQL Server.
--IF we add IDENTITY for any column, it fill start from specific number which we choose and increases by specific point which we choose
--For instance, we add (Column) CustomerID int IDENTITY(5,2) it means first ID of CustomerID will be 5 and in every next insert it will add 
--- plus 2 and will be 7, for another next insert it will be 9 and so on.

--10 th question
---Use BULK INSERT to import data from a text file into the Products table.


--11 th question
--Create a FOREIGN KEY in the Products table that references the Categories table.
--I will havo add data for the table as primary key can not accept null values
Alter table Products
add Categor int

insert into Categories values (1, 'tech', 400), (2, 'Smart', 600),(3, 'mobile', 50)
update Products
set Categor=1
where ProductID=1

update Products
set Categor=2
where ProductID=2

update Products
set Categor=3
where ProductID=3


Alter table Products
add constraint fk_Categor foreign key (Categor) references Categories (CategoryID)



--12 th question
--Explain the differences between PRIMARY KEY and UNIQUE KEY with examples.
--PRIMARY KEY  accept only non-null values for that column and PRIMARY KEY can be only one in a table
--UNIQUE KEY also provides unique data for the asserted column but it can take null value only once in that column( not twice or moore)
CREATE TABLE Employees1 (
    EmployeeID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Email NVARCHAR(100)
);

insert into Employees1 values (1, 'Kook', '@Kook.com')

create table StuffTeam (StuffID int unique, Name varchar(60))

insert into StuffTeam values (Null, 'Robert')

--13 rd question
---Add a CHECK constraint to the Products table ensuring Price > 0.

alter table Products
add constraint chk_Price
check (Price>0)

--14 th question
---Modify the Products table to add a column Stock (INT, NOT NULL).
ALTER TABLE Products
ADD Stock INT NOT NULL DEFAULT 0

--15 th question
--Use the ISNULL function to replace NULL values in a column with a default value.
create table Footballers (FootballPlayerID int, Name varchar (40), ISNULL varchar (30) default 0)

---16 th question
---Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.
--A FOREIGN KEY constraint in SQL Server is used to enforce referential integrity between two tables. 
--It ensures that the value in one table's column(s) (known as the child table) matches a value in the column(s)
--of another table (the parent table). Essentially, a foreign key ensures that a relationship between two tables
--remains consistent by enforcing valid links between rows.
--Creating a Foreign Key: When creating a foreign key, you specify the column(s) in the child table that
--references the primary key (or unique constraint) in the parent table.
--Assume we have two tables: Orders (child table) and Customers (parent table). 
--We want to ensure each order is associated with a valid customer.
CREATE TABLE Customers1 (
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(100)
);

CREATE TABLE Orders1 (
    OrderID INT PRIMARY KEY,
    OrderDate DATETIME,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers1 (CustomerID)
);
--17 th question
---Write a script to create a Customers table with a CHECK constraint ensuring Age >= 18.
drop table if exists Customers

create table Customers (CustomersID int Primary Key, Name varchar (40), Age int check (Age>=18))

--18 th question
--Create a table with an IDENTITY column starting at 100 and incrementing by 10.
create table OrderTennis (playerID int IDENTITY(100,10), Name varchar(30)) 

--19 th question
--Write a query to create a composite PRIMARY KEY in a new table OrderDetails.
drop table if exists OrderDetails
drop table if exists Orders
drop table if exists Products

create table Orders (OrderID int primary key, Name varchar(30))
create table Products (ProductID int Primary key, Name varchar(30))

CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

---20 th question
---Explain with examples the use of COALESCE and ISNULL functions for handling NULL values.
---The COALESCE function takes two or more arguments and returns the first non-NULL value 
--from the list of arguments. If all arguments are NULL, it returns NULL.
--Let's say we have a Customers table with columns Email, PhoneNumber, and FaxNumber, 
--and we want to display the first available contact method for each customer.
--SELECT CustomerID, 
 --      COALESCE(Email, PhoneNumber, FaxNumber, 'No Contact Info') AS ContactInfo
--FROM Customers;
--COALESCE checks Email, and if it’s NULL, it moves to PhoneNumber, and then FaxNumber.

--If all three are NULL, it returns 'No Contact Info'.
--The ISNULL function is specific to SQL Server and takes two arguments. 
--It checks if the first argument is NULL, and if so, it returns the second argument. 
--If the first argument is not NULL, it simply returns the first argument.
--ISNULL(expression, replacement_value)
--SELECT CustomerID, 
   --    ISNULL(Email, 'No Email Available') AS ContactEmail

---21 st question
--Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.
Create table Employees (EmpID int PRIMARY KEY, Email varchar (50) UNIQUE)

---22 nd question
--Write a query to create a FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE options.
create table ChildTable (ChildID int Primary key, Name varchar(40))

create table ParentTable (ParentID int Primary key, Name varchar(70), ChildIdent int)

ALTER TABLE ParentTable 
ADD CONSTRAINT FK_ChildIdent
FOREIGN KEY (ChildIdent)
REFERENCES ChildTable (ChildID)
ON DELETE CASCADE
ON UPDATE CASCADE;

