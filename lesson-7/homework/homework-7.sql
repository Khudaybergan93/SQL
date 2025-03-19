create database lesson_7 
use lesson_7
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(100),
    Price DECIMAL(10, 2),
    Category VARCHAR(50),
    StockQuantity INT
);

-- Insert 40 rows into Products
INSERT INTO Products VALUES
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

select* from Products

--1 st task in Easy-level Tasks

Select ProductID, Min(Price) as MinPrice from Products group by ProductID

--2 nd task in Easy-level Tasks
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    HireDate DATE
);

INSERT INTO Employees (EmployeeID, Name, DepartmentID, Salary, HireDate) VALUES
(1, 'John Doe', 1, 55000.00, '2020-01-01'),
(2, 'Jane Smith', 2, 65000.00, '2019-03-15'),
(3, 'Mary Johnson', 3, 45000.00, '2021-05-10'),
(4, 'James Brown', 1, 60000.00, '2018-07-22'),
(5, 'Patricia Davis', 4, 70000.00, '2017-08-30'),
(6, 'Michael Miller', 2, 75000.00, '2020-12-12'),
(7, 'Linda Wilson', 3, 48000.00, '2016-11-02'),
(8, 'David Moore', 4, 85000.00, '2021-09-01'),
(9, 'Elizabeth Taylor', 1, 60000.00, '2019-05-18'),
(10, 'William Anderson', 2, 64000.00, '2020-04-10'),
(11, 'Susan Thomas', 3, 47000.00, '2017-01-25'),
(12, 'Joseph Jackson', 4, 78000.00, '2016-09-30'),
(13, 'Karen White', 1, 59000.00, '2018-06-10'),
(14, 'Steven Harris', 2, 71000.00, '2021-07-15'),
(15, 'Nancy Clark', 3, 45000.00, '2020-02-20'),
(16, 'George Lewis', 4, 80000.00, '2019-11-10'),
(17, 'Betty Lee', 1, 55000.00, '2017-04-05'),
(18, 'Samuel Walker', 2, 72000.00, '2021-03-22'),
(19, 'Helen Hall', 3, 49000.00, '2018-10-16'),
(20, 'Charles Allen', 4, 90000.00, '2015-08-11'),
(21, 'Betty Young', 1, 53000.00, '2020-05-17'),
(22, 'Frank King', 2, 67000.00, '2021-02-02'),
(23, 'Deborah Scott', 3, 47000.00, '2019-07-09'),
(24, 'Matthew Green', 4, 76000.00, '2021-01-15'),
(25, 'Sandra Adams', 1, 54000.00, '2020-06-21'),
(26, 'Paul Nelson', 2, 71000.00, '2018-12-03'),
(27, 'Margaret Carter', 3, 46000.00, '2020-08-19'),
(28, 'Anthony Mitchell', 4, 82000.00, '2021-04-10'),
(29, 'Lisa Perez', 1, 60000.00, '2021-03-05'),
(30, 'Christopher Roberts', 2, 69000.00, '2019-09-24'),
(31, 'Jessica Gonzalez', 3, 47000.00, '2017-12-13'),
(32, 'Brian Moore', 4, 85000.00, '2018-11-05'),
(33, 'Dorothy Evans', 1, 59000.00, '2019-06-11'),
(34, 'Matthew Carter', 2, 70000.00, '2020-01-29'),
(35, 'Rachel Martinez', 3, 51000.00, '2021-06-06'),
(36, 'Daniel Perez', 4, 83000.00, '2021-07-01'),
(37, 'Catherine Roberts', 1, 60000.00, '2020-09-19'),
(38, 'Ronald Murphy', 2, 68000.00, '2017-02-04'),
(39, 'Angela Jenkins', 3, 52000.00, '2018-04-23'),
(40, 'Gary Wright', 4, 87000.00, '2021-01-10');

select * from Employees

select DepartmentID, Max(Salary) as MaxSalary 
from Employees group by DepartmentID

--3 rd task in Easy-level Tasks
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

select * from Customers

Select Count(*) as number_of_rows from Customers

--4 th task in Easy-level Tasks
select* from Products

Select Count(distinct Category) as Num_of_Categ from Products

--Might be also solved like that to see names of Categories
Select Category, Count(distinct Category) as Num_of_Categ
from Products group by Category  

---5 th task in Easy-level Tasks
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    SaleDate DATE,
    SaleAmount DECIMAL(10, 2)
);
INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, SaleAmount) VALUES
(1, 1, 1, '2023-01-01', 150.00),
(2, 2, 2, '2023-01-02', 200.00),
(3, 3, 3, '2023-01-03', 250.00),
(4, 4, 4, '2023-01-04', 300.00),
(5, 5, 5, '2023-01-05', 350.00),
(6, 6, 6, '2023-01-06', 400.00),
(7, 7, 7, '2023-01-07', 450.00),
(8, 8, 8, '2023-01-08', 500.00),
(9, 9, 9, '2023-01-09', 550.00),
(10, 10, 10, '2023-01-10', 600.00),
(11, 1, 1, '2023-01-11', 150.00),
(12, 2, 2, '2023-01-12', 200.00),
(13, 3, 3, '2023-01-13', 250.00),
(14, 4, 4, '2023-01-14', 300.00),
(15, 5, 5, '2023-01-15', 350.00),
(16, 6, 6, '2023-01-16', 400.00),
(17, 7, 7, '2023-01-17', 450.00),
(18, 8, 8, '2023-01-18', 500.00),
(19, 9, 9, '2023-01-19', 550.00),
(20, 10, 10, '2023-01-20', 600.00),
(21, 1, 2, '2023-01-21', 150.00),
(22, 2, 3, '2023-01-22', 200.00),
(23, 3, 4, '2023-01-23', 250.00),
(24, 4, 5, '2023-01-24', 300.00),
(25, 5, 6, '2023-01-25', 350.00),
(26, 6, 7, '2023-01-26', 400.00),
(27, 7, 8, '2023-01-27', 450.00),
(28, 8, 9, '2023-01-28', 500.00),
(29, 9, 10, '2023-01-29', 550.00),
(30, 10, 1, '2023-01-30', 600.00),
(31, 1, 2, '2023-02-01', 150.00),
(32, 2, 3, '2023-02-02', 200.00),
(33, 3, 4, '2023-02-03', 250.00),
(34, 4, 5, '2023-02-04', 300.00),
(35, 5, 6, '2023-02-05', 350.00),
(36, 6, 7, '2023-02-06', 400.00),
(37, 7, 8, '2023-02-07', 450.00),
(38, 8, 9, '2023-02-08', 500.00),
(39, 9, 10, '2023-02-09', 550.00),
(40, 10, 1, '2023-02-10', 600.00);

select * from Sales

select ProductID, Sum(SaleAmount) as Sum_Amount 
from Sales group by ProductID

---6 th task in Easy-level Tasks
select* from Employees

Alter table Employees
Add Age int not null

update  Employees
set Age=61
where EmployeeID=32

Select AVG(Age) as Aver_age from Employees

--7 th task of Easy-level Tasks
select * from Employees

select DepartmentID, Count(Name) As Dep_workers
from Employees group by DepartmentID

----8 th task of Easy-level Tasks
select * from Products

select Category, Max(price) as Max_Price, 
Min(Price) as Min_Price from Products group by Category

---9 th task of Easy-level Tasks
select * from Sales

Alter table Sales
add Region varchar(40)

update Sales
set Region='Brazil'
where CustomerID=10

Select Region, Sum(SaleAmount) as Sum_of_Regions
from Sales group by Region

---10 th task of Easy-level Tasks
select * from Employees

Select DepartmentID from Employees
group by DepartmentID having Count(Name)>5

--1 st task of Medium-level Tasks
Select * from Sales

select ProductID, SUM(SaleAmount) as TotalSale,
AVG(SaleAmount) as Avera_Sale
from Sales group by ProductID

--2 nd task of Medium-level Tasks
Select * from Employees 

Select Count(distinct DepartmentID) As Spec_Emp
from Employees

--3 rd task of Medium-level Tasks
Select DepartmentID, Max(Salary) as MaxSalary, 
Min(Salary) as MinSalary from Employees group by DepartmentID

--4 th task of Medium-level Tasks
Select DepartmentID, AVG(Salary) as Aver_Salary
from Employees group by DepartmentID

--5 th task of Medium-level Tasks
Select DepartmentID, AVG(Salary) as Aver_Salary,
Count(Name) as Emp_Count
from Employees group by DepartmentID

--6 th task of Medium-level Tasks
Select * from Products

Select Name from Products group by Name 
having (AVG(Price))>100

--7 th task of Medium-level Tasks
select * from Products

select Name, Count(Distinct ProductID)
as Topsales from Products group by Name
Having (AVG(StockQuantity))>100

--8 th task of Medium-level Tasks
Select * from Sales

Alter table Sales 
add Year int

Update Sales
set Year=2021
where CustomerID=10

Select Year, Sum(SaleAmount) as Sum_Annual 
from Sales group by Year 

--9 th task of Medium-level Tasks
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
	Region varchar(40)
);

INSERT INTO Orders (OrderID, CustomerID, ProductID, OrderDate, Quantity, Region) VALUES
(1, 1, 2, '2023-01-15', 2, 'USA'),
(2, 1, 3, '2023-01-20', 1, 'UK'),
(3, 1, 5, '2023-02-15', 3, 'Australia'),
(4, 4, 8, '2023-02-18', 1, 'UK'),
(5, 1, 6, '2023-03-10', 4, 'France'),
(6, 6, 7, '2023-03-12', 2, 'USA'),
(7, 7, 9, '2023-03-20', 1, 'Australia'),
(8, 8, 1, '2023-04-05', 1, 'France'),
(9, 9, 4, '2023-04-10', 2, 'USA'),
(10, 10, 10, '2023-04-15', 1, 'UK')

select * from Orders

Select  CustomerID, Count(distinct Region) as Cust_Count
from Orders group by CustomerID

--10 th task of Medium-level Tasks
select * from Employees

Select DepartmentID from Employees
group by DepartmentID having (Sum(Salary))>100000

--1 st task of Hard-level Tasks
select * from Products

Select CATEGORY, AVG(PRICE) as Aver_Price
from Products group by CATEGORY having (AVG(Price))>200

--2 nd task of Hard-level Tasks
CREATE TABLE EmployeeRoles (
    RoleID INT PRIMARY KEY,
    RoleName VARCHAR(100),
    EmployeeID INT,
    DepartmentID INT,
    Sales DECIMAL(10, 2),
    StartDate DATE)
    
INSERT INTO EmployeeRoles (RoleID, RoleName, EmployeeID, DepartmentID, Sales, StartDate) VALUES
(1, 'Manager', 1, 1, 7500.00, '2018-01-01'),
(2, 'Developer', 2, 2, 6000.00, '2019-02-01'),
(3, 'Analyst', 3, 3, 5500.00, '2020-03-15'),
(4, 'HR Specialist', 4, 4, 5000.00, '2021-04-10'),
(5, 'Designer', 5, 2, 6500.00, '2017-06-05'),
(6, 'Tester', 6, 3, 4500.00, '2022-07-20'),
(7, 'Developer', 7, 2, 6000.00, '2018-11-15'),
(8, 'Manager', 8, 1, 8000.00, '2016-01-01'),
(9, 'HR Specialist', 9, 4, 4700.00, '2021-08-30'),
(10, 'Analyst', 10, 3, 5500.00, '2020-05-20'),
(11, 'Developer', 11, 2, 6300.00, '2019-03-10'),
(12, 'Manager', 12, 1, 7800.00, '2017-02-01'),
(13, 'Tester', 13, 3, 4600.00, '2020-06-15'),
(14, 'HR Specialist', 14, 4, 5000.00, '2021-07-01'),
(15, 'Developer', 15, 2, 6200.00, '2019-09-10'),
(16, 'Analyst', 16, 3, 5400.00, '2020-10-20'),
(17, 'Manager', 17, 1, 8100.00, '2015-01-01'),
(18, 'Designer', 18, 2, 6600.00, '2018-05-05'),
(19, 'Developer', 19, 2, 6100.00, '2021-06-01'),
(20, 'HR Specialist', 20, 4, 4900.00, '2022-04-15'),
(21, 'Tester', 21, 3, 4600.00, '2022-01-10'),
(22, 'Developer', 22, 2, 6300.00, '2019-11-15'),
(23, 'Manager', 23, 1, 7600.00, '2017-01-10'),
(24, 'HR Specialist', 24, 4, 5100.00, '2021-03-25'),
(25, 'Analyst', 25, 3, 5600.00, '2020-02-15'),
(26, 'Developer', 26, 2, 5900.00, '2019-07-15'),
(27, 'Tester', 27, 3, 4700.00, '2021-12-01'),
(28, 'Manager', 28, 1, 8200.00, '2016-06-05'),
(29, 'Developer', 29, 2, 6200.00, '2019-02-10'),
(30, 'Analyst', 30, 3, 5400.00, '2020-11-01'),
(31, 'HR Specialist', 31, 4, 4800.00, '2021-09-25'),
(32, 'Developer', 32, 2, 6500.00, '2020-04-15'),
(33, 'Manager', 33, 1, 7700.00, '2018-10-05'),
(34, 'Analyst', 34, 3, 5300.00, '2020-09-10'),
(35, 'Tester', 35, 3, 4500.00, '2022-02-01'),
(36, 'Developer', 36, 2, 6200.00, '2020-07-10'),
(37, 'Manager', 37, 1, 7800.00, '2015-11-15'),
(38, 'Designer', 38, 2, 6700.00, '2020-01-01'),
(39, 'HR Specialist', 39, 4, 4900.00, '2021-05-10'),
(40, 'Developer', 40, 2, 6500.00, '2021-12-01');

select * from EmployeeRoles

select EmployeeID, Sum(Sales) as Total_Sales 
from EmployeeRoles group by EmployeeID having (Sum(Sales))>5000

--3 rd task of Hard-level Tasks
select * from Employees

select DepartmentID, Sum(salary) as Total_salary,
AVG(Salary) as Aver_Salary from Employees group by 
DepartmentID having (AVG(salary))>6000

--4 th task of Hard-level Tasks
CREATE TABLE Orders1 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    TotalValue DECIMAL(10, 2))

INSERT INTO Orders1 VALUES 
(1, 1, 2, '2024-01-10', 1, 800.00),
(2, 2, 3, '2024-01-11', 2, 800.00),
(3, 3, 4, '2024-01-12', 1, 250.00),
(4, 4, 5, '2024-01-13', 3, 150.00),
(5, 5, 6, '2024-01-14', 1, 30.00),
(6, 6, 7, '2024-01-15', 2, 300.00),
(7, 7, 8, '2024-01-16', 1, 200.00),
(8, 8, 9, '2024-01-17', 4, 40.00),
(9, 9, 10, '2024-01-18', 1, 10.00),
(10, 10, 11, '2024-01-19', 2, 360.00),
(11, 11, 12, '2024-01-20', 1, 500.00),
(12, 12, 13, '2024-01-21', 1, 25.00),
(13, 13, 14, '2024-01-22', 2, 60.00),
(14, 14, 15, '2024-01-23', 3, 135.00),
(15, 15, 16, '2024-01-24', 1, 80.00),
(16, 16, 17, '2024-01-25', 1, 60.00),
(17, 17, 18, '2024-01-26', 2, 40.00),
(18, 18, 19, '2024-01-27', 5, 50.00),
(19, 19, 20, '2024-01-28', 2, 50.00),
(20, 20, 21, '2024-01-29', 1, 60.00),
(21, 21, 22, '2024-02-01', 1, 100.00),
(22, 22, 23, '2024-02-02', 1, 15.00),
(23, 23, 24, '2024-02-03', 2, 180.00),
(24, 24, 25, '2024-02-04', 3, 15.00),
(25, 25, 26, '2024-02-05', 4, 100.00),
(26, 26, 27, '2024-02-06', 1, 450.00),
(27, 27, 28, '2024-02-07', 1, 600.00),
(28, 28, 29, '2024-02-08', 1, 500.00),
(29, 29, 30, '2024-02-09', 2, 240.00),
(30, 30, 31, '2024-02-10', 1, 350.00),
(31, 31, 32, '2024-02-11', 1, 450.00),
(32, 32, 33, '2024-02-12', 1, 40.00),
(33, 33, 34, '2024-02-13', 2, 100.00),
(34, 34, 35, '2024-02-14', 3, 120.00),
(35, 35, 36, '2024-02-15', 1, 60.00),
(36, 36, 37, '2024-02-16', 1, 35.00),
(37, 37, 38, '2024-02-17', 2, 110.00),
(38, 38, 39, '2024-02-18', 1, 40.00),
(39, 39, 40, '2024-02-19', 3, 120.00),
(40, 40, 1, '2024-02-20', 1, 1200.00)

select * from Orders1

Select CustomerID, Max(TotalValue) as Max_Val, 
Min(TotalValue) as Min_Val from Orders1
group by CustomerID having (Min(TotalValue))>50

--5 th task of Hard-level Tasks
CREATE TABLE Sale (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT,
    Region Varchar(40),
    SaleAmount DECIMAL(10, 2)
);

 INSERT INTO Sale VALUES 
(1, 1, 11, 'USA', 150.00),
(2, 2, 20, 'UK', 200.00),
(3, 3, 3, 'Australia', 250.00),
(4, 4, 4, 'France', 300.00),
(5, 5, 5, 'Germany', 350.00),
(6, 6, 6, 'USA', 400.00),
(7, 7, 7, 'UK', 450.00),
(8, 8, 8, 'Australia', 500.00),
(9, 9, 9, 'UK', 550.00),
(10, 10, 10, 'France', 600.00),
(11, 1, 12, 'UK', 150.00),
(12, 2, 2, 'Germany', 200.00),
(13, 3, 3, 'France', 250.00),
(14, 4, 4, 'USA', 300.00),
(15, 5, 5, 'Australia', 350.00),
(16, 6, 6, 'France', 400.00),
(17, 7, 7, 'Germany', 450.00),
(18, 8, 8, 'UK', 500.00),
(19, 9, 9, 'Australia', 550.00),
(20, 10, 10, 'Germany', 600.00),
(21, 1, 21, 'Australia', 150.00),
(22, 2, 3, 'France', 200.00),
(23, 3, 4, 'UK', 250.00),
(24, 4, 5, 'Germany', 300.00),
(25, 5, 6, 'Australia', 350.00),
(26, 6, 7, 'Germany', 400.00),
(27, 7, 8, 'Australia', 450.00),
(28, 8, 9, 'USA', 500.00),
(29, 9, 10, 'UK', 550.00),
(30, 10, 1, 'Australia', 600.00),
(31, 1, 22, 'France', 150.00),
(32, 2, 3, 'Australia', 200.00),
(33, 3, 4, 'UK', 250.00),
(34, 4, 5, 'Germany', 300.00),
(35, 5, 6, 'Australia', 350.00),
(36, 6, 7, 'France', 400.00),
(37, 7, 8, 'USA', 450.00),
(38, 8, 9, 'UK', 500.00),
(39, 9, 10, 'France', 550.00),
(40, 1, 13, 'Germany', 600.00);

select * from Sale

Select Region, Sum(SaleAmount) as Total_Sum, 
count(distinct ProductID) as SoldProducts from Sale
group by Region having count(Quantity)>10

--6 th task of Hard-level Tasks
CREATE TABLE ProductCate (
    CategoryID INT PRIMARY KEY,
    ProductCategory VARCHAR(100),
    ProductID INT,
	OrderQuantity int)

INSERT INTO ProductCate (CategoryID, ProductCategory, ProductID, OrderQuantity) VALUES
(1, 'Electronics', 1, 14),
(2, 'Electronics', 2, 4),
(3, 'Electronics', 3, 9),
(4, 'Office Equipment', 4, 3),
(5, 'Office Equipment', 5, 9),
(6, 'Accessories', 6, 13),
(7, 'Accessories', 7, 6),
(8, 'Office Equipment', 8, 6),
(9, 'Home Appliances', 9, 16),
(10, 'Home Appliances', 10, 21),
(11, 'Electronics', 1, 24),
(12, 'Electronics', 2, 2),
(13, 'Electronics', 3, 7),
(14, 'Office Equipment', 4, 8),
(15, 'Office Equipment', 5, 11),
(16, 'Accessories', 6, 15),
(17, 'Accessories', 7, 18),
(18, 'Office Equipment', 8, 20),
(19, 'Home Appliances', 9, 10),
(20, 'Home Appliances', 10, 8),
(21, 'Electronics', 1, 1),
(22, 'Electronics', 2, 5),
(23, 'Electronics', 3, 7),
(24, 'Office Equipment', 4, 12),
(25, 'Office Equipment', 5, 11),
(26, 'Accessories', 6, 14),
(27, 'Accessories', 7, 17),
(28, 'Office Equipment', 8, 18),
(29, 'Home Appliances', 9, 19),
(30, 'Home Appliances', 10, 21),
(31, 'Electronics', 1, 22),
(32, 'Electronics', 2, 20),
(33, 'Electronics', 3, 21),
(34, 'Office Equipment', 4, 23),
(35, 'Office Equipment', 5, 24),
(36, 'Accessories', 6, 13),
(37, 'Accessories', 7, 2),
(38, 'Office Equipment', 8, 1),
(39, 'Home Appliances', 9, 7),
(40, 'Home Appliances', 10, 9);

select * from ProductCate

Select ProductCategory, Max(OrderQuantity) as Max_ord,
Min(OrderQuantity) as Min_ord from 
ProductCate group by ProductCategory

--7 th task of Hard-level Tasks
select * from Sales
pivot (
Sum(SaleAmount) for [Region] in (['USA'], ['UK'], ['Australia'],
['Holland'], ['France'], ['Germany'], ['China'], ['India'],['Uzbekistan'], ['Brazil']), for
[Year] in ([2021], [2022], [2023], [2024])) as PivotTable





--9 th task of hard-level tasks
CREATE TABLE ProductCate2 (
    CategoryID INT PRIMARY KEY,
    ProductCategory VARCHAR(100),
    ProductID INT,
	OrderQuantity int)

INSERT INTO ProductCate2 (CategoryID, ProductCategory, ProductID, OrderQuantity) VALUES
(1, 'Electronics', 1, 54),
(2, 'Electronics', 2, 48),
(3, 'Electronics', 3, 90),
(4, 'Office Equipment', 4, 31),
(5, 'Office Equipment', 5, 9),
(6, 'Accessories', 6, 13),
(7, 'Accessories', 7, 6),
(8, 'Office Equipment', 8, 60),
(9, 'Home Appliances', 9, 16),
(10, 'Home Appliances', 10, 76),
(11, 'Electronics', 1, 24),
(12, 'Electronics', 2, 2),
(13, 'Electronics', 3, 7),
(14, 'Office Equipment', 4, 8),
(15, 'Office Equipment', 5, 11),
(16, 'Accessories', 6, 55),
(17, 'Accessories', 7, 18),
(18, 'Office Equipment', 8, 20),
(19, 'Home Appliances', 9, 10),
(20, 'Home Appliances', 10, 8),
(21, 'Electronics', 1, 1),
(22, 'Electronics', 2, 5),
(23, 'Electronics', 3, 7),
(24, 'Office Equipment', 4, 12),
(25, 'Office Equipment', 5, 11),
(26, 'Accessories', 6, 14),
(27, 'Accessories', 7, 17),
(28, 'Office Equipment', 8, 18),
(29, 'Home Appliances', 9, 19),
(30, 'Home Appliances', 10, 21),
(31, 'Electronics', 1, 22),
(32, 'Electronics', 2, 20),
(33, 'Electronics', 3, 21),
(34, 'Office Equipment', 4, 23),
(35, 'Office Equipment', 5, 24),
(36, 'Accessories', 6, 13),
(37, 'Accessories', 7, 2),
(38, 'Office Equipment', 8, 1),
(39, 'Home Appliances', 9, 7),
(40, 'Home Appliances', 10, 9);

select * from ProductCate2

select ProductCategory, Count(OrderQuantity) as Order_Count
from ProductCate2 group by ProductCategory having Count(OrderQuantity)>50



