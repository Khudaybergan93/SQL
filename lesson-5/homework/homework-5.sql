create database homework5
use homework5
--1 st task in easy-level tasks
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);
INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Laptop', 1200.00),
(2, 'Smartphone', 800.00),
(3, 'Tablet', 400.00),
(4, 'Monitor', 200.00),
(5, 'Keyboard', 50.00),
(6, 'Mouse', 30.00),
(7, 'Printer', 150.00),
(8, 'Headphones', 100.00),
(9, 'Speakers', 80.00),
(10, 'Webcam', 60.00),
(11, 'Laptop', 1100.00),
(12, 'Smartphone', 750.00),
(13, 'Tablet', 420.00),
(14, 'Monitor', 220.00),
(15, 'Keyboard', 55.00),
(16, 'Mouse', 35.00),
(17, 'Printer', 160.00),
(18, 'Headphones', 120.00),
(19, 'Speakers', 90.00),
(20, 'Webcam', 65.00),
(21, 'Laptop', 1300.00),
(22, 'Smartphone', 850.00),
(23, 'Tablet', 380.00),
(24, 'Monitor', 210.00),
(25, 'Keyboard', 60.00),
(26, 'Mouse', 40.00),
(27, 'Printer', 170.00),
(28, 'Headphones', 130.00),
(29, 'Speakers', 95.00),
(30, 'Webcam', 70.00),
(31, 'Laptop', 1400.00),
(32, 'Smartphone', 900.00),
(33, 'Tablet', 430.00),
(34, 'Monitor', 230.00),
(35, 'Keyboard', 65.00),
(36, 'Mouse', 45.00),
(37, 'Printer', 180.00),
(38, 'Headphones', 140.00),
(39, 'Speakers', 100.00),
(40, 'Webcam', 75.00);

select ProductName as Name from Products

--2 nd task in easy-level tasks
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);
INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES
(1, 'John Doe', 'USA'),
(2, 'Jane Smith', 'UK'),
(3, 'Michael Johnson', 'Canada'),
(4, 'Sarah Brown', 'Australia'),
(5, 'David Green', 'USA'),
(6, 'Linda White', 'Canada'),
(7, 'James Black', 'UK'),
(8, 'Emily Blue', 'Australia'),
(9, 'Matthew Red', 'USA'),
(10, 'Olivia Yellow', 'Canada'),
(11, 'John Doe', 'Australia'),
(12, 'Jane Smith', 'Canada'),
(13, 'Michael Johnson', 'UK'),
(14, 'Sarah Brown', 'USA'),
(15, 'David Green', 'Canada'),
(16, 'Linda White', 'Australia'),
(17, 'James Black', 'USA'),
(18, 'Emily Blue', 'Canada'),
(19, 'Matthew Red', 'UK'),
(20, 'Olivia Yellow', 'Australia'),
(21, 'John Doe', 'Canada'),
(22, 'Jane Smith', 'Australia'),
(23, 'Michael Johnson', 'USA'),
(24, 'Sarah Brown', 'UK'),
(25, 'David Green', 'Australia'),
(26, 'Linda White', 'USA'),
(27, 'James Black', 'Canada'),
(28, 'Emily Blue', 'UK'),
(29, 'Matthew Red', 'Australia'),
(30, 'Olivia Yellow', 'USA'),
(31, 'John Doe', 'UK'),
(32, 'Jane Smith', 'USA'),
(33, 'Michael Johnson', 'Australia'),
(34, 'Sarah Brown', 'Canada'),
(35, 'David Green', 'UK'),
(36, 'Linda White', 'USA'),
(37, 'James Black', 'Australia'),
(38, 'Emily Blue', 'Canada'),
(39, 'Matthew Red', 'USA'),
(40, 'Olivia Yellow', 'UK');


select * from Customers as Client

--3 rd task in easy-level tasks
CREATE TABLE Products_Discontinued (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Products_Discontinued (ProductID, ProductName, Price) VALUES
(21, 'DVD Player', 70.00),
(22, 'MP3 Player', 50.00),
(23, 'CRT Monitor', 100.00),
(24, 'Fax Machine', 120.00),
(25, 'Pager', 30.00),
(26, 'VCR', 90.00),
(27, 'Blackberry Phone', 150.00),
(28, 'MiniDisc Player', 80.00),
(29, 'Plasma TV', 600.00),
(30, 'Dot Matrix Printer', 200.00),
(31, 'Slide Projector', 250.00),
(32, 'Camcorder', 400.00),
(33, 'Floppy Disk Drive', 40.00),
(34, 'Cassette Player', 35.00),
(35, 'Typewriter', 180.00),
(36, 'Analog Camera', 220.00),
(37, 'Game Boy', 120.00),
(38, 'Handheld PDA', 175.00),
(39, 'Walkie Talkie', 90.00),
(40, 'Portable CD Player', 55.00);
select ProductName from Products 
union 
select ProductName from Products_Discontinued

--4 th task in easy-level tasks
select * from Products
intersect 
select * from Products_Discontinued

----5 th task in easy-level tasks
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO Orders (OrderID, CustomerID, ProductID, OrderDate, Quantity) VALUES
(1, 1, 2, '2023-01-15', 2),
(2, 2, 3, '2023-01-20', 1),
(3, 3, 5, '2023-02-15', 3),
(4, 4, 8, '2023-02-18', 1),
(5, 5, 6, '2023-03-10', 4),
(6, 6, 7, '2023-03-12', 2),
(7, 7, 9, '2023-03-20', 1),
(8, 8, 1, '2023-04-05', 1),
(9, 9, 4, '2023-04-10', 2),
(10, 10, 10, '2023-04-15', 1),
(11, 11, 3, '2023-05-01', 2),
(12, 12, 6, '2023-05-03', 1),
(13, 13, 2, '2023-05-10', 1),
(14, 14, 8, '2023-06-01', 3),
(15, 15, 5, '2023-06-02', 2),
(16, 16, 7, '2023-06-15', 2),
(17, 17, 9, '2023-06-20', 1),
(18, 18, 4, '2023-07-01', 3),
(19, 19, 1, '2023-07-05', 1),
(20, 20, 10, '2023-07-10', 1),
(21, 21, 6, '2023-08-01', 2),
(22, 22, 2, '2023-08-03', 3),
(23, 23, 3, '2023-08-10', 1),
(24, 24, 5, '2023-09-01', 1),
(25, 25, 7, '2023-09-05', 2),
(26, 26, 8, '2023-09-10', 3),
(27, 27, 4, '2023-09-15', 1),
(28, 28, 9, '2023-10-01', 1),
(29, 29, 1, '2023-10-05', 2),
(30, 30, 3, '2023-10-10', 1),
(31, 31, 6, '2023-11-01', 4),
(32, 32, 7, '2023-11-05', 3),
(33, 33, 5, '2023-11-10', 2),
(34, 34, 9, '2023-11-15', 1),
(35, 35, 8, '2023-12-01', 1),
(36, 36, 10, '2023-12-05', 2),
(37, 37, 4, '2023-12-10', 3),
(38, 38, 3, '2023-12-15', 2),
(39, 39, 2, '2023-12-20', 3),
(40, 40, 1, '2023-12-25', 1);

select* from Products
Union ALL
select* from Orders
---the provided tables themselves are incorrect therefore it causes errors

--6 th task in easy-level tasks
select distinct CustomerName, Country 
from Customers
--7 th task in easy-level tasks
select ProductID, ProductName, Price,
case
when Price>100 then 'Low' else 'High'
end as [Price_value]
from Products

--8 th task in easy-level tasks
--The provided table does not exist
--9 th task in easy-level tasks
CREATE TABLE Products1 (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10, 2),
    Category VARCHAR(50),
    StockQuantity INT
);
INSERT INTO Products1 VALUES
(1, 'Laptop', 1200.00, 'Electronics', 30),
(2, 'Smartphone', 800.00, 'Electronics', 50),
(3, 'Tablet', 400.00, 'Electronics', 40),
(4, 'Monitor', 250.00, 'Electronics', 60),
(5, 'Keyboard', 50.00, 'Accessories', 100),
(6, 'Mouse', 30.00, 'Accessories', 120),
(7, 'Chair', 150.00, 'Furniture', 80),
(8, 'Desk', 200.00, 'Furniture', 75),
(9, 'Pen', 5.00, 'Stationery', 300),
(10, 'Notebook', 10.00, 'Stationery', 500),
(11, 'Printer', 180.00, 'Electronics', 25),
(12, 'Camera', 500.00, 'Electronics', 40),
(13, 'Flashlight', 25.00, 'Tools', 200),
(14, 'Shirt', 30.00, 'Clothing', 150),
(15, 'Jeans', 45.00, 'Clothing', 120),
(16, 'Jacket', 80.00, 'Clothing', 70),
(17, 'Shoes', 60.00, 'Clothing', 100),
(18, 'Hat', 20.00, 'Accessories', 50),
(19, 'Socks', 10.00, 'Clothing', 200),
(20, 'T-Shirt', 25.00, 'Clothing', 150),
(21, 'Lamp', 60.00, 'Furniture', 40),
(22, 'Coffee Table', 100.00, 'Furniture', 35),
(23, 'Book', 15.00, 'Stationery', 250),
(24, 'Rug', 90.00, 'Furniture', 60),
(25, 'Cup', 5.00, 'Accessories', 500),
(26, 'Bag', 25.00, 'Accessories', 300),
(27, 'Couch', 450.00, 'Furniture', 15),
(28, 'Fridge', 600.00, 'Electronics', 20),
(29, 'Stove', 500.00, 'Electronics', 15),
(30, 'Microwave', 120.00, 'Electronics', 25),
(31, 'Air Conditioner', 350.00, 'Electronics', 10),
(32, 'Washing Machine', 450.00, 'Electronics', 15),
(33, 'Dryer', 400.00, 'Electronics', 10),
(34, 'Hair Dryer', 30.00, 'Accessories', 100),
(35, 'Iron', 40.00, 'Electronics', 50),
(36, 'Coffee Maker', 50.00, 'Electronics', 60),
(37, 'Blender', 35.00, 'Electronics', 40),
(38, 'Juicer', 55.00, 'Electronics', 30),
(39, 'Toaster', 40.00, 'Electronics', 70),
(40, 'Dishwasher', 500.00, 'Electronics', 20);
select Category, Count(ProductID) as ProductCount
from Products1 group by Category
--10 th task in easy-level tasks
CREATE TABLE Market (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10, 2),
    Category VARCHAR(50),
    Stock INT
);
INSERT INTO Market VALUES
(1, 'Laptop', 1200.00, 'Electronics', 30),
(2, 'Smartphone', 800.00, 'Electronics', 50),
(3, 'Tablet', 400.00, 'Electronics', 40),
(4, 'Monitor', 250.00, 'Electronics', 60),
(5, 'Keyboard', 50.00, 'Accessories', 100),
(6, 'Mouse', 30.00, 'Accessories', 120),
(7, 'Chair', 150.00, 'Furniture', 80),
(8, 'Desk', 200.00, 'Furniture', 75),
(9, 'Pen', 5.00, 'Stationery', 300),
(10, 'Notebook', 10.00, 'Stationery', 500),
(11, 'Printer', 180.00, 'Electronics', 25),
(12, 'Camera', 500.00, 'Electronics', 40),
(13, 'Flashlight', 25.00, 'Tools', 200),
(14, 'Shirt', 30.00, 'Clothing', 150),
(15, 'Jeans', 45.00, 'Clothing', 120),
(16, 'Jacket', 80.00, 'Clothing', 70),
(17, 'Shoes', 60.00, 'Clothing', 100),
(18, 'Hat', 20.00, 'Accessories', 50),
(19, 'Socks', 10.00, 'Clothing', 200),
(20, 'T-Shirt', 25.00, 'Clothing', 150),
(21, 'Lamp', 60.00, 'Furniture', 40),
(22, 'Coffee Table', 100.00, 'Furniture', 35),
(23, 'Book', 15.00, 'Stationery', 250),
(24, 'Rug', 90.00, 'Furniture', 60),
(25, 'Cup', 5.00, 'Accessories', 500),
(26, 'Bag', 25.00, 'Accessories', 300),
(27, 'Couch', 450.00, 'Furniture', 15),
(28, 'Fridge', 600.00, 'Electronics', 20),
(29, 'Stove', 500.00, 'Electronics', 15),
(30, 'Microwave', 120.00, 'Electronics', 25),
(31, 'Air Conditioner', 350.00, 'Electronics', 10),
(32, 'Washing Machine', 450.00, 'Electronics', 15),
(33, 'Dryer', 400.00, 'Electronics', 10),
(34, 'Hair Dryer', 30.00, 'Accessories', 100),
(35, 'Iron', 40.00, 'Electronics', 50),
(36, 'Coffee Maker', 50.00, 'Electronics', 60),
(37, 'Blender', 35.00, 'Electronics', 40),
(38, 'Juicer', 55.00, 'Electronics', 30),
(39, 'Toaster', 40.00, 'Electronics', 70),
(40, 'Dishwasher', 500.00, 'Electronics', 20);

select ProductID, Name, Price, Category, Stock, 
IIF ( Stock > 100, 'Yes', 'No') as Answer
from Market

---Medium-Level Tasks 
--1 st task of Medium-Level Tasks
Select O.OrderID, C.CustomerName as ClientName from Orders O 
inner join Customers C on O.CustomerID=C.CustomerID
--2 nd task of Medium-Level Tasks
create table OutOfStock (ProductName Varchar(50), Clientname varchar(30), Price int)
insert into OutOfStock values ('Smartwatch', 'Max', 1400),
('Smart Tv', 'Yura', 1000), ('DVD player', 'Roney', 200),('Dishwasher', 'Beki', 800), ('Car', 'Matue', 19000)
 Select ProductName from Products
 Union 
 select ProductName from OutOfStock 
 
 --3 rd task of Medium-Level Tasks
 CREATE TABLE DiscontinuedProducts (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO DiscontinuedProducts (ProductID, ProductName, Price) VALUES
(21, 'DVD Player', 70.00),
(22, 'MP3 Player', 50.00),
(23, 'CRT Monitor', 100.00),
(24, 'Fax Machine', 120.00),
(25, 'Pager', 30.00),
(26, 'VCR', 90.00),
(27, 'Blackberry Phone', 150.00),
(28, 'MiniDisc Player', 80.00),
(29, 'Plasma TV', 600.00),
(30, 'Dot Matrix Printer', 200.00),
(31, 'Slide Projector', 250.00),
(32, 'Camcorder', 400.00),
(33, 'Floppy Disk Drive', 40.00),
(34, 'Cassette Player', 35.00),
(35, 'Typewriter', 180.00),
(36, 'Analog Camera', 220.00),
(37, 'Game Boy', 120.00),
(38, 'Handheld PDA', 175.00),
(39, 'Walkie Talkie', 90.00),
(40, 'Portable CD Player', 55.00);
 Select * from Products
 Except
 Select * from DiscontinuedProducts

 --4 th task of Medium-Level Tasks
 CREATE TABLE CustomerOrders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    ProductID INT,
    Orders INT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO CustomerOrders (OrderID, CustomerID, OrderDate, ProductID, Orders, TotalAmount) VALUES
(1, 1, '2023-01-15', 2, 2, 1600.00),
(2, 2, '2023-01-20', 3, 1, 400.00),
(3, 3, '2023-02-15', 5, 3, 150.00),
(4, 4, '2023-02-18', 8, 1, 100.00),
(5, 5, '2023-03-10', 6, 4, 120.00),
(6, 6, '2023-03-12', 7, 2, 300.00),
(7, 7, '2023-03-20', 9, 1, 80.00),
(8, 8, '2023-04-05', 1, 1, 1200.00),
(9, 9, '2023-04-10', 4, 2, 400.00),
(10, 10, '2023-04-15', 10, 1, 60.00),
(11, 11, '2023-05-01', 3, 2, 800.00),
(12, 12, '2023-05-03', 6, 1, 60.00),
(13, 13, '2023-05-10', 2, 1, 800.00),
(14, 14, '2023-06-01', 8, 3, 300.00),
(15, 15, '2023-06-02', 5, 2, 100.00),
(16, 16, '2023-06-15', 7, 2, 150.00),
(17, 17, '2023-06-20', 9, 1, 80.00),
(18, 18, '2023-07-01', 4, 3, 600.00),
(19, 19, '2023-07-05', 1, 1, 1200.00),
(20, 20, '2023-07-10', 10, 1, 60.00),
(21, 21, '2023-08-01', 6, 2, 120.00),
(22, 22, '2023-08-03', 2, 3, 1200.00),
(23, 23, '2023-08-10', 3, 1, 400.00),
(24, 24, '2023-09-01', 5, 1, 150.00),
(25, 25, '2023-09-05', 7, 2, 300.00),
(26, 26, '2023-09-10', 8, 3, 300.00),
(27, 27, '2023-09-15', 4, 1, 200.00),
(28, 28, '2023-10-01', 9, 1, 80.00),
(29, 29, '2023-10-05', 1, 2, 2400.00),
(30, 30, '2023-10-10', 3, 1, 400.00),
(31, 31, '2023-11-01', 6, 4, 240.00),
(32, 32, '2023-11-05', 7, 3, 450.00),
(33, 33, '2023-11-10', 5, 2, 100.00),
(34, 34, '2023-11-15', 9, 1, 80.00),
(35, 35, '2023-12-01', 8, 1, 100.00),
(36, 36, '2023-12-05', 10, 2, 120.00),
(37, 37, '2023-12-10', 4, 3, 600.00),
(38, 38, '2023-12-15', 3, 2, 800.00),
(39, 39, '2023-12-20', 2, 3, 1200.00),
(40, 40, '2023-12-25', 1, 1, 1200.00);

select OrderID, CustomerID, OrderDate, ProductID, Orders, TotalAmount,
case 
when Orders>5 then 'Eligible'else 'Not Eligible'
end as Eligibility from CustomerOrders

--5 th task of Medium-Level Tasks
select ProductID, ProductName, Price,
IIF (Price>100, 'Expensive', 'Affordable') 
 'Capability' from Products

 --6 th task of Medium-Level Tasks
 select CustomerID, count(OrderID) as OrderNumber
 from Orders group by CustomerID

 --7 th task of Medium-Level Tasks
 CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    Age int
);
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID, Salary, Age) VALUES
(1, 'John Doe', 1, 5500.00, 21),
(2, 'Jane Smith', 2, 6500.00, 20),
(3, 'Mary Johnson', 3, 4500.00, 37),
(4, 'James Brown', 1, 6000.00, 29),
(5, 'Patricia Davis', 4, 7000.00, 24),
(6, 'Michael Miller', 2, 7500.00, 26),
(7, 'Linda Wilson', 3, 4800.00, 27),
(8, 'David Moore', 4, 8500.00, 28),
(9, 'Elizabeth Taylor', 1, 6000.00, 26),
(10, 'William Anderson', 2, 6400.00, 23),
(11, 'Susan Thomas', 3, 4700.00, 37),
(12, 'Joseph Jackson', 4, 7800.00, 24),
(13, 'Karen White', 1, 5900.00, 32),
(14, 'Steven Harris', 2, 7100.00, 37),
(15, 'Nancy Clark', 3, 4500.00, 22),
(16, 'George Lewis', 4, 8000.00, 24),
(17, 'Betty Lee', 1, 5500.00, 37),
(18, 'Samuel Walker', 2, 7200.00, 31),
(19, 'Helen Hall', 3, 4900.00, 30),
(20, 'Charles Allen', 4, 9000.00, 29),
(21, 'Betty Young', 1, 5300.00, 28),
(22, 'Frank King', 2, 6700.00, 26),
(23, 'Deborah Scott', 3, 4700.00, 27),
(24, 'Matthew Green', 4, 7600.00, 25),
(25, 'Sandra Adams', 1, 5400.00, 19),
(26, 'Paul Nelson', 2, 7100.00, 23),
(27, 'Margaret Carter', 3, 4600.00, 36),
(28, 'Anthony Mitchell', 4, 8200.00, 60),
(29, 'Lisa Perez', 1, 6000.00, 54),
(30, 'Christopher Roberts', 2, 6900.00, 47),
(31, 'Jessica Gonzalez', 3, 4700.00, 21),
(32, 'Brian Moore', 4, 8500.00, 20),
(33, 'Dorothy Evans', 1, 5900.00, 26),
(34, 'Matthew Carter', 2, 7000.00, 35),
(35, 'Rachel Martinez', 3, 5100.00, 22),
(36, 'Daniel Perez', 4, 8300.00, 34),
(37, 'Catherine Roberts', 1, 6000.00, 23),
(38, 'Ronald Murphy', 2, 6800.00, 45),
(39, 'Angela Jenkins', 3, 5200.00, 27),
(40, 'Gary Wright', 4, 8700.00, 24);

select EmployeeName from Employees
where Age<25 or Salary>6000

 --8 th task of Medium-Level Tasks
 CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    SaleDate DATE,
    SalesAmount DECIMAL(10, 2),
	Region varchar(50),
);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, SalesAmount, Region) VALUES
(1, 1, 1, '2023-01-01', 150.00, 'North America'),
(2, 2, 2, '2023-01-02', 200.00, 'South America'),
(3, 3, 3, '2023-01-03', 250.00, 'Europe'),
(4, 4, 4, '2023-01-04', 300.00, 'Asia'),
(5, 5, 5, '2023-01-05', 350.00, 'North America'),
(6, 6, 6, '2023-01-06', 400.00, 'Australia'),
(7, 7, 7, '2023-01-07', 450.00, 'Asia'),
(8, 8, 8, '2023-01-08', 500.00, 'North America'),
(9, 9, 9, '2023-01-09', 550.00, 'South America'),
(10, 10, 10, '2023-01-10', 600.00, 'Europe'),
(11, 1, 1, '2023-01-11', 150.00, 'Asia'),
(12, 2, 2, '2023-01-12', 200.00, 'Africa'),
(13, 3, 3, '2023-01-13', 250.00, 'North America'),
(14, 4, 4, '2023-01-14', 300.00, 'Africa'),
(15, 5, 5, '2023-01-15', 350.00, 'Asia'),
(16, 6, 6, '2023-01-16', 400.00, 'South America'),
(17, 7, 7, '2023-01-17', 450.00, 'Europe'),
(18, 8, 8, '2023-01-18', 500.00, 'Australia'),
(19, 9, 9, '2023-01-19', 550.00, 'Asia'),
(20, 10, 10, '2023-01-20', 600.00, 'North America'),
(21, 1, 2, '2023-01-21', 150.00, 'South America'),
(22, 2, 3, '2023-01-22', 200.00, 'Australia'),
(23, 3, 4, '2023-01-23', 250.00, 'Europe'),
(24, 4, 5, '2023-01-24', 300.00, 'Africa'),
(25, 5, 6, '2023-01-25', 350.00, 'North America'),
(26, 6, 7, '2023-01-26', 400.00, 'Australia'),
(27, 7, 8, '2023-01-27', 450.00, 'Australia'),
(28, 8, 9, '2023-01-28', 500.00, 'North America'),
(29, 9, 10, '2023-01-29', 550.00, 'Africa'),
(30, 10, 1, '2023-01-30', 600.00, 'Europe'),
(31, 1, 2, '2023-02-01', 150.00, 'South America'),
(32, 2, 3, '2023-02-02', 200.00, 'Australia'),
(33, 3, 4, '2023-02-03', 250.00, 'North America'),
(34, 4, 5, '2023-02-04', 300.00, 'Africa'),
(35, 5, 6, '2023-02-05', 350.00, 'Europe'),
(36, 6, 7, '2023-02-06', 400.00, 'Africa'),
(37, 7, 8, '2023-02-07', 450.00, 'North America'),
(38, 8, 9, '2023-02-08', 500.00, 'Australia'),
(39, 9, 10, '2023-02-09', 550.00, 'Europe'),
(40, 10, 1, '2023-02-10', 600.00, 'Africa');

select Region, Sum(SalesAmount) as Sales_by_Region
from Sales group by Region

--9 th task of Medium-Level Tasks

--10 th task of Medium-Level Tasks
CREATE TABLE EmployeeDepartments (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    DepartmentName VARCHAR(100),
	Salary int
);

INSERT INTO EmployeeDepartments (EmployeeID, EmployeeName, DepartmentName, Salary) VALUES
(1, 'John Doe', 'HR', 700),
(2, 'Jane Smith', 'IT', 100),
(3, 'Michael Johnson', 'Sales', 200),
(4, 'Sarah Brown', 'Marketing',300),
(5, 'David Green', 'Finance', 400),
(6, 'Linda White', 'IT', 600),
(7, 'James Black', 'Sales', 4500),
(8, 'Emily Blue', 'HR', 800),
(9, 'Matthew Red', 'Marketing', 400),
(10, 'Olivia Yellow', 'Finance', 600),
(11, 'John Doe', 'Finance', 1000),
(12, 'Jane Smith', 'Sales', 300),
(13, 'Michael Johnson', 'IT', 700),
(14, 'Sarah Brown', 'HR', 600),
(15, 'David Green', 'Sales', 500),
(16, 'Linda White', 'Marketing', 200),
(17, 'James Black', 'Finance', 300),
(18, 'Emily Blue', 'IT', 100),
(19, 'Matthew Red', 'HR', 500),
(20, 'Olivia Yellow', 'Sales', 400),
(21, 'John Doe', 'Marketing', 500),
(22, 'Jane Smith', 'HR', 200),
(23, 'Michael Johnson', 'Finance', 800),
(25, 'David Green', 'HR', 300),
(24, 'Sarah Brown', 'IT', 900),
(26, 'Linda White', 'Sales', 100),
(27, 'James Black', 'Marketing', 500),
(28, 'Emily Blue', 'Finance', 900),
(29, 'Matthew Red', 'HR', 300),
(30, 'Olivia Yellow', 'IT', 900),
(31, 'John Doe', 'Sales', 700),
(32, 'Jane Smith', 'Marketing', 400),
(33, 'Michael Johnson', 'HR', 900),
(34, 'Sarah Brown', 'Finance', 600),
(35, 'David Green', 'Marketing', 700),
(36, 'Linda White', 'HR', 600),
(37, 'James Black', 'IT', 900),
(38, 'Emily Blue', 'Finance', 700),
(39, 'Matthew Red', 'Sales', 600),
(40, 'Olivia Yellow', 'HR', 700);

Declare @salary INT 
set @salary='HR'+cast(@salary as Varchar) 

if @salary='HR'+cast(@salary as Varchar) 
begin 
print @salary*11%10
end
else print @salary

--Or it might be solved like that following
Update EmployeeDepartments 
set salary =
case 
when DepartmentName='HR' then 
Salary* 1.10 
else Salary
end 

--1 st task of Hard-Level Tasks
--The table returns is not provided

--2 nd task of Hard-Level Tasks
Select ProductName from Products
Intersect 
select ProductName from DiscontinuedProducts

--3 rd task of Hard-Level Tasks 
CREATE TABLE Invoices (
    InvoiceID INT PRIMARY KEY,
    CustomerID INT,
    InvoiceDate DATE,
    TotalSales DECIMAL(10, 2),
    Status VARCHAR(50)
);
INSERT INTO Invoices (InvoiceID, CustomerID, InvoiceDate, TotalSales, Status) VALUES
(1, 1, '2025-01-01', 500.00, 'Paid'),
(2, 2, '2025-01-03', 700.00, 'Pending'),
(3, 3, '2025-01-10', 300.00, 'Paid'),
(4, 4, '2025-01-15', 400.00, 'Overdue'),
(5, 5, '2025-01-18', 600.00, 'Paid'),
(6, 6, '2025-01-20', 800.00, 'Pending'),
(7, 7, '2025-02-01', 200.00, 'Paid'),
(8, 8, '2025-02-05', 350.00, 'Pending'),
(9, 9, '2025-02-07', 450.00, 'Paid'),
(10, 10, '2025-02-10', 550.00, 'Pending'),
(11, 11, '2025-02-15', 650.00, 'Overdue'),
(12, 12, '2025-02-20', 750.00, 'Paid'),
(13, 13, '2025-03-01', 900.00, 'Paid'),
(14, 14, '2025-03-05', 1000.00, 'Pending'),
(15, 15, '2025-03-10', 1200.00, 'Paid'),
(16, 16, '2025-03-12', 1500.00, 'Overdue'),
(17, 17, '2025-03-15', 1800.00, 'Paid'),
(18, 18, '2025-03-20', 2500.00, 'Pending'),
(19, 19, '2025-04-01', 3000.00, 'Paid'),
(20, 20, '2025-04-03', 3500.00, 'Pending'),
(21, 21, '2025-04-05', 4000.00, 'Overdue'),
(22, 22, '2025-04-08', 4500.00, 'Paid'),
(23, 23, '2025-04-10', 5000.00, 'Pending'),
(24, 24, '2025-04-12', 5500.00, 'Paid'),
(25, 25, '2025-04-15', 6000.00, 'Overdue'),
(26, 26, '2025-04-20', 6500.00, 'Paid'),
(27, 27, '2025-05-01', 7000.00, 'Pending'),
(28, 28, '2025-05-03', 7500.00, 'Paid'),
(29, 29, '2025-05-07', 8000.00, 'Pending'),
(30, 30, '2025-05-10', 8500.00, 'Paid'),
(31, 31, '2025-05-12', 9000.00, 'Overdue'),
(32, 32, '2025-05-15', 9500.00, 'Paid'),
(33, 33, '2025-05-18', 10000.00, 'Pending'),
(34, 34, '2025-06-01', 10500.00, 'Paid'),
(35, 35, '2025-06-03', 11000.00, 'Pending'),
(36, 36, '2025-06-05', 11500.00, 'Paid'),
(37, 37, '2025-06-07', 12000.00, 'Overdue'),
(38, 38, '2025-06-10', 12500.00, 'Paid'),
(39, 39, '2025-06-12', 13000.00, 'Pending'),
(40, 40, '2025-06-15', 13500.00, 'Paid');

select InvoiceID, CustomerID, InvoiceDate, TotalSales, Status,
case 
when TotalSales > 10000 then 'Top Tier' 
when TotalSales between 5000 AND 10000 then 'Mid Tier' else 'Low Tier'
end as TierGroups from Invoices

--4 th task of Hard-Level Tasks 
--5 th task of Hard-Level Tasks 
--6 th task of Hard-Level Tasks


--7 th task of hard-level Tasks
CREATE TABLE ProductDiscounts (
    Discount INT PRIMARY KEY,
    ProductID INT,
    DiscountPercentage DECIMAL(5, 2),
    Quantity_purchased int
);
INSERT INTO ProductDiscounts (Discount, ProductID, DiscountPercentage, Quantity_purchased) VALUES
(1, 1, 10.00,58 ),
(2, 2, 15.00, 25),
(3, 3, 20.00, 64),
(4, 4, 5.00, 13),
(5, 5, 25.00, 37),
(6, 6, 30.00, 89),
(7, 7, 12.00, 78),
(8, 8, 8.00, 45),
(9, 9, 18.00, 61),
(10, 10, 10.00, 74)
select Discount, 
case 
when Quantity_purchased>55 then 'Large' 
when Quantity_purchased>43 then 'Medium' else 'Little'
end as SizeofDiscount
from ProductDiscounts
--8 th task of hard-level Tasks


--9 th task of hard-level Tasks
Create table Stockassets 
(Country varchar(40) Primary key, Stock varchar(40))
insert into Stockassets values ('Brazil', 0), ('USA', 2), ('Russia', 0), 
('Peru', 0), ('Australia', 3), ('England', 0), ('France', 4)

select Country, Stock, 
IIF (Stock = 0, 'Out of Stock', IIF (Stock>0, 'Available', 'Another')) as StockStatus
from Stockassets

--10 th task of hard-level Tasks
create table VIP_Customers 
(CustomerID Int Primary key, CustomerName varchar(50))
insert into VIP_Customers values (25, 'John'),(31, 'Max'),(44, 'Yura'), (45, 'Travolta')

Select CustomerID from Customers
except 
select CustomerID from VIP_Customers









