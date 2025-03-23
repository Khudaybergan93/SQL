create database lesson_8
use lesson_8
--1 st task of easy-level tasks
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100),
    LoyaltyStatus VARCHAR(50)
);
INSERT INTO Customers VALUES
(1, 'Alice', 'New York', 'Gold'),
(2, 'Bob', 'California', 'Silver'),
(3, 'Charlie', 'Texas', 'Gold'),
(4, 'David', 'Florida', 'Platinum'),
(5, 'Eve', 'California', 'Gold'),
(6, 'Frank', 'Texas', 'Silver'),
(7, 'Grace', 'New York', 'Platinum'),
(8, 'Helen', 'Florida', 'Gold'),
(9, 'Ivan', 'California', 'Silver'),
(10, 'Jack', 'New York', 'Gold'),
(11, 'Kathy', 'Texas', 'Gold'),
(12, 'Leo', 'California', 'Platinum'),
(13, 'Mona', 'New York', 'Silver'),
(14, 'Nina', 'Florida', 'Gold'),
(15, 'Oscar', 'California', 'Silver'),
(16, 'Paul', 'Texas', 'Gold'),
(17, 'Quincy', 'New York', 'Platinum'),
(18, 'Rachel', 'Florida', 'Silver'),
(19, 'Sam', 'California', 'Gold'),
(20, 'Tom', 'Texas', 'Platinum'),
(21, 'Uma', 'New York', 'Gold'),
(22, 'Vera', 'California', 'Platinum'),
(23, 'Walter', 'Florida', 'Silver'),
(24, 'Xander', 'Texas', 'Gold'),
(25, 'Yara', 'New York', 'Silver'),
(26, 'Zoe', 'California', 'Platinum'),
(27, 'Aaron', 'Texas', 'Gold'),
(28, 'Bella', 'Florida', 'Platinum'),
(29, 'Caleb', 'California', 'Silver'),
(30, 'Diana', 'Texas', 'Gold'),
(31, 'Eva', 'New York', 'Silver'),
(32, 'Finn', 'Florida', 'Gold'),
(33, 'Gina', 'California', 'Platinum'),
(34, 'Hank', 'Texas', 'Silver'),
(35, 'Ivy', 'New York', 'Gold'),
(36, 'Jason', 'California', 'Silver'),
(37, 'Ken', 'Texas', 'Platinum'),
(38, 'Lia', 'Florida', 'Gold'),
(39, 'Mick', 'New York', 'Platinum'),
(40, 'Noah', 'California', 'Gold');

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)  
);

INSERT INTO Orders VALUES
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
(40, 40, 1, '2024-02-20', 1, 1200.00);

select c.Name,o.OrderDate from Customers c
join Orders o on c.CustomerID=o.CustomerID

--2 nd task of easy-level tasks
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
drop table EmployeeDetails
CREATE TABLE EmployeeDetails (
    RoleID INT PRIMARY KEY,
    RoleName VARCHAR(100),
    EmployeeID INT Unique,
    DepartmentID INT ,
    Salary DECIMAL(10, 2),
    StartDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID) on delete cascade)

	INSERT INTO EmployeeDetails (RoleID, RoleName, EmployeeID, DepartmentID, Salary, StartDate) VALUES
(1, 'Manager', 1, 1, 75000.00, '2018-01-01'),
(2, 'Developer', 2, 2, 60000.00, '2019-02-01'),
(3, 'Analyst', 3, 3, 55000.00, '2020-03-15'),
(4, 'HR Specialist', 4, 4, 50000.00, '2021-04-10'),
(5, 'Designer', 5, 2, 65000.00, '2017-06-05'),
(6, 'Tester', 6, 3, 45000.00, '2022-07-20'),
(7, 'Developer', 7, 2, 60000.00, '2018-11-15'),
(8, 'Manager', 8, 1, 80000.00, '2016-01-01'),
(9, 'HR Specialist', 9, 4, 47000.00, '2021-08-30'),
(10, 'Analyst', 10, 3, 55000.00, '2020-05-20'),
(11, 'Developer', 11, 2, 63000.00, '2019-03-10'),
(12, 'Manager', 12, 1, 78000.00, '2017-02-01'),
(13, 'Tester', 13, 3, 46000.00, '2020-06-15'),
(14, 'HR Specialist', 14, 4, 50000.00, '2021-07-01'),
(15, 'Developer', 15, 2, 62000.00, '2019-09-10'),
(16, 'Analyst', 16, 3, 54000.00, '2020-10-20'),
(17, 'Manager', 17, 1, 81000.00, '2015-01-01'),
(18, 'Designer', 18, 2, 66000.00, '2018-05-05'),
(19, 'Developer', 19, 2, 61000.00, '2021-06-01'),
(20, 'HR Specialist', 20, 4, 49000.00, '2022-04-15'),
(21, 'Tester', 21, 3, 46000.00, '2022-01-10'),
(22, 'Developer', 22, 2, 63000.00, '2019-11-15'),
(23, 'Manager', 23, 1, 76000.00, '2017-01-10'),
(24, 'HR Specialist', 24, 4, 51000.00, '2021-03-25'),
(25, 'Analyst', 25, 3, 56000.00, '2020-02-15'),
(26, 'Developer', 26, 2, 59000.00, '2019-07-15'),
(27, 'Tester', 27, 3, 47000.00, '2021-12-01'),
(28, 'Manager', 28, 1, 82000.00, '2016-06-05'),
(29, 'Developer', 29, 2, 62000.00, '2019-02-10'),
(30, 'Analyst', 30, 3, 54000.00, '2020-11-01'),
(31, 'HR Specialist', 31, 4, 48000.00, '2021-09-25'),
(32, 'Developer', 32, 2, 65000.00, '2020-04-15'),
(33, 'Manager', 33, 1, 77000.00, '2018-10-05'),
(34, 'Analyst', 34, 3, 53000.00, '2020-09-10'),
(35, 'Tester', 35, 3, 45000.00, '2022-02-01'),
(36, 'Developer', 36, 2, 62000.00, '2020-07-10'),
(37, 'Manager', 37, 1, 78000.00, '2015-11-15'),
(38, 'Designer', 38, 2, 67000.00, '2020-01-01'),
(39, 'HR Specialist', 39, 4, 49000.00, '2021-05-10'),
(40, 'Developer', 40, 2, 65000.00, '2021-12-01');

--3 rd task of easy-level tasks
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Category VARCHAR(100),
    Price DECIMAL(10, 2),
    StockQuantity INT
);
 INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) VALUES
(1, 'Laptop', 'Electronics', 999.99, 50),
(2, 'Smartphone', 'Electronics', 799.99, 100),
(3, 'Tablet', 'Electronics', 499.99, 200),
(4, 'Wireless Mouse', 'Electronics', 29.99, 500),
(5, 'Keyboard', 'Electronics', 49.99, 300),
(6, 'Monitor', 'Electronics', 199.99, 150),
(7, 'Headphones', 'Electronics', 89.99, 400),
(8, 'Smartwatch', 'Electronics', 159.99, 50),
(9, 'Camera', 'Electronics', 499.99, 75),
(10, 'Smart TV', 'Electronics', 699.99, 30),
(11, 'Sofa', 'Furniture', 299.99, 20),
(12, 'Dining Table', 'Furniture', 399.99, 15),
(13, 'Office Chair', 'Furniture', 99.99, 50),
(14, 'Bookshelf', 'Furniture', 129.99, 35),
(15, 'Lamp', 'Furniture', 29.99, 60),
(16, 'Bed', 'Furniture', 499.99, 10),
(17, 'Refrigerator', 'Appliances', 799.99, 25),
(18, 'Washing Machine', 'Appliances', 699.99, 20),
(19, 'Air Conditioner', 'Appliances', 599.99, 10),
(20, 'Microwave', 'Appliances', 99.99, 100),
(21, 'Jacket', 'Clothing', 79.99, 100),
(22, 'Jeans', 'Clothing', 49.99, 150),
(23, 'T-Shirt', 'Clothing', 19.99, 200),
(24, 'Sweater', 'Clothing', 39.99, 120),
(25, 'Dress', 'Clothing', 59.99, 80),
(26, 'Shoes', 'Clothing', 89.99, 50),
(27, 'Boots', 'Clothing', 119.99, 60),
(28, 'Socks', 'Clothing', 5.99, 500),
(29, 'Scarf', 'Clothing', 14.99, 100),
(30, 'Hat', 'Clothing', 24.99, 75),
(31, 'Blender', 'Appliances', 49.99, 200),
(32, 'Toaster', 'Appliances', 29.99, 150),
(33, 'Electric Kettle', 'Appliances', 39.99, 300),
(34, 'Coffee Maker', 'Appliances', 89.99, 50),
(35, 'Hair Dryer', 'Beauty', 39.99, 120),
(36, 'Shampoo', 'Beauty', 19.99, 300),
(37, 'Conditioner', 'Beauty', 14.99, 400),
(38, 'Nail Polish', 'Beauty', 9.99, 200),
(39, 'Body Lotion', 'Beauty', 15.99, 150),
(40, 'Perfume', 'Beauty', 49.99, 60);  

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100)
);
INSERT INTO Categories (CategoryID, CategoryName) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Home & Kitchen'),
(4, 'Sports & Outdoors'),
(5, 'Beauty & Personal Care'),
(6, 'Toys & Games'),
(7, 'Books'),
(8, 'Groceries'),
(9, 'Furniture'),
(10, 'Automotive'),
(11, 'Health & Wellness'),
(12, 'Pet Supplies'),
(13, 'Jewelry'),
(14, 'Baby Products'),
(15, 'Music'),
(16, 'Movies & TV Shows'),
(17, 'Office Supplies'),
(18, 'Tools & Home Improvement'),
(19, 'Garden & Outdoor'),
(20, 'Food & Beverages'),
(21, 'Software'),
(22, 'Art & Craft'),
(23, 'Travel Accessories'),
(24, 'Phone Accessories'),
(25, 'Luggage & Bags'),
(26, 'Gifts & Occasions'),
(27, 'Digital Products'),
(28, 'Gaming Consoles'),
(29, 'Cameras & Photography'),
(30, 'Smart Home'),
(31, 'Computers & Laptops'),
(32, 'Appliances'),
(33, 'Musical Instruments'),
(34, 'Party Supplies'),
(35, 'Watches'),
(36, 'Outdoor Gear'),
(37, 'Seasonal Products'),
(38, 'Luxury Goods'),
(39, 'Home Decor'),
(40, 'Art Supplies');

select p.ProductName,c.CategoryName from Products p
join Categories c on p.ProductID=c.CategoryID

--4 th task of easy-level tasks
Select c.Name, o.OrderDate from Customers c
left join Orders o on c.CustomerID=o.OrderID

--5 th task of easy-level tasks
CREATE TABLE Products1 (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255))

	INSERT INTO Products1 (ProductID, ProductName) VALUES
(1, 'Laptop'),
(2, 'Smartphone'),
(3, 'Tablet')

CREATE TABLE Orders1 (
    OrderID INT PRIMARY KEY,
    CustomerID INT)

INSERT INTO Orders1 VALUES
(1, 1),
(2, 2),
(3, 3)

create table Order_Details 
(ProductID INT,
OrderID INT,
Primary key (ProductID, OrderID),
Foreign key (ProductID) references Products1 (ProductID),
Foreign key (OrderID) references Orders1 (OrderID))

insert into Order_Details values
(1, 1),
(2,2),
(3,3)
select o.OrderID,
p.ProductID
from Orders1 o
join Order_Details od on o.OrderID=od.OrderID
join Products1 p on p.ProductID=od.ProductID

 --6 th task of easy-level tasks
 select * from Products
 cross join Categories

 --7 th task of easy-level tasks
 CREATE TABLE Customers1 (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);
CREATE TABLE Orders2 (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers1 (CustomerID)
);
INSERT INTO Customers1 (CustomerID, Name, Email) VALUES
(1, 'John Doe', 'john@example.com'),
(2, 'Jane Smith', 'jane@example.com');

INSERT INTO Orders2 (OrderID, OrderDate, CustomerID, Amount) VALUES
(101, '2025-03-01', 1, 200.50),
(102, '2025-03-02', 1, 150.75),
(103, '2025-03-03', 2, 300.00);

select * from Customers1 c1
Inner Join Orders2 o2 on c1.CustomerID=o2.CustomerID

 --8 th task of easy-level tasks
 select * from Products
Cross Join Orders 
where TotalAmount>500

--9 th task of easy-level tasks
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Sales'),
(2, 'Human Resources'),
(3, 'IT'),
(4, 'Marketing'),
(5, 'Finance'),
(6, 'Legal'),
(7, 'Operations'),
(8, 'Research & Development'),
(9, 'Customer Support'),
(10, 'Procurement'),
(11, 'Supply Chain'),
(12, 'Logistics'),
(13, 'Design'),
(14, 'Product Management'),
(15, 'Public Relations'),
(16, 'Business Development'),
(17, 'Quality Assurance'),
(18, 'Data Analytics'),
(19, 'Software Engineering'),
(20, 'Compliance'),
(21, 'Audit'),
(22, 'Product Design'),
(23, 'Health & Safety'),
(24, 'Training & Development'),
(25, 'Accounting'),
(26, 'IT Security'),
(27, 'Market Research'),
(28, 'Customer Success'),
(29, 'Talent Acquisition'),
(30, 'Communications'),
(31, 'Sales Support'),
(32, 'Business Intelligence'),
(33, 'Project Management'),
(34, 'Legal Affairs'),
(35, 'Creative Services'),
(36, 'Information Systems'),
(37, 'Corporate Strategy'),
(38, 'Change Management'),
(39, 'Investor Relations'),
(40, 'Employee Relations');

select e.Name, d.DepartmentName from Employees e 
inner join Departments d on e.EmployeeID=d.DepartmentID

--10 th task of easy-level tasks
select e.Name, d.DepartmentName from Employees e 
inner join Departments d on e.EmployeeID<>d.DepartmentID

--11 th task, Medium-level tasks

select c.Name,o.Quantity from Customers c
join Orders o on c.CustomerID=o.CustomerID

--12 th task, Medium-level tasks
create table Students (StudentID INT primary key, StudentName varchar(50))
insert into Students  values (1, 'Max'), (2, 'Yura'), (3, 'Beruniy')

create table Courses ( CourseID int primary Key, CourseName varchar(40))
insert into Courses values (1, 'Mathematics'), (2, 'Physics'), (3, 'Literature')

create table StudentCourses (StudentID int,
CourseID int,
Primary Key (StudentID, CourseID),
Foreign Key (StudentID) references Students(StudentID),
Foreign key (CourseID) references  Courses (CourseID))

insert into StudentCourses values (1, 1), (2, 2), (3,3),
(3, 1), (1,2)

select s.StudentName,c.CourseName,sc.CourseID from Students s
join StudentCourses sc on s.StudentID=sc.StudentID
join Courses c on c.CourseID=sc.CourseID

--13 th task, Medium-level tasks
select * from Employees
cross join  Departments 
where Salary>5000

--14 th task, Medium-level tasks
select * from Employees e
join EmployeeDetails ed on e.EmployeeID=ed.EmployeeID

--15 th task, Medium-level tasks
create table Products2 (productID int primary key,
ProductName varchar(40), Supplier varchar(10))

insert into Products2 values (1, 'Phone', 'A'),
(2, 'Watch', 'B'), (3, 'TV', 'C'), (4, 'Dishwasher', 'A'), (5, 'Microowen', 'A')

create table Suppliers (SupplierID int primary key, SupplierName varchar(30), ProductID int,
foreign key (ProductID) references Products2(productID))

insert into Suppliers values (1, 'Hope', 1), (2, 'Test', 2), (3, 'lastWish', 3),
(4, 'Dream', 4), (5, 'Twins', 5)

select * from Products2 p2
inner join Suppliers s on p2.productID=s.ProductID
where Supplier='A'

--16 th task, Medium-level tasks
CREATE TABLE Products3 (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Category VARCHAR(100),
    Price DECIMAL(10, 2),
    SaleQuantity INT
);
 INSERT INTO Products3 (ProductID, ProductName, Category, Price, SaleQuantity) VALUES
(1, 'Laptop', 'Electronics', 999.99, 50),
(2, 'Smartphone', 'Electronics', 799.99, 100),
(3, 'Tablet', 'Electronics', 499.99, 200),
(4, 'Wireless Mouse', 'Electronics', 29.99, 500),
(5, 'Keyboard', 'Electronics', 49.99, 300),
(6, 'Monitor', 'Electronics', 199.99, 150),
(7, 'Headphones', 'Electronics', 89.99, 400),
(8, 'Smartwatch', 'Electronics', 159.99, 50),
(9, 'Camera', 'Electronics', 499.99, 75),
(10, 'Smart TV', 'Electronics', 699.99, 30)

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
(10, 10, 10, '2023-01-10', 600.00)

select p3.ProductName, p3.SaleQuantity from Products3 p3
left join Sales s on p3.ProductID=s.ProductID

--17 th task, Medium-level tasks
select e.Name from Employees e
Join Departments d on e.EmployeeID=d.DepartmentID
where d.DepartmentName='Human Resources' and Salary>4000

--18 th task, Medium-level tasks
select * from Employees e
Join Departments d on e.EmployeeID>=d.DepartmentID

--19 th task, Medium-level tasks
Alter table Products2 
add Price int

update Products2
set price=51
where productID=1

update Products2
set price=49
where productID=2

update Products2
set price=50
where productID=3

update Products2
set price=60
where productID=4

update Products2
set price=44
where productID=5

select p.ProductName, p.Supplier from Products2 p
Inner join Suppliers s on p.productID=s.ProductID
where Price>=50

--20 th task, Medium-level tasks
create table Sales2 (SaleID int primary Key, SaleAmount float)
insert into Sales2 values (1, 1200), (2, 980), (3, 1030), (4, 1400),
(5, 120), (6, 780), (7, 2300), (8, 1500)

create table Region (RegionID int primary key, RegionName varchar(40), SaleAmounts float)
insert into Region values (1, 'South America', 1200), (2, 'North America', 980),
(3, 'Africa', 1030), (4, 'Asia', 1400), (5, 'Europe', 120), (6, 'South Asia', 780),
(7, 'Canada', 2300), (8, 'Germany', 1500)

select RegionName from Region
cross join Sales2
where SaleAmount> 1000

--21 st task, Hard-level tasks
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    Name VARCHAR(100)
);
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255)
);

INSERT INTO Authors (AuthorID, Name) VALUES 
(1, 'J.K. Rowling'),
(2, 'J.R.R. Tolkien'),
(3, 'George R.R. Martin'),
(4, 'Terry Pratchett'),
(5, 'Neil Gaiman');

INSERT INTO Books (BookID, Title) VALUES 
(101, 'Harry Potter and the Sorcerers Stone'),
(102, 'The Lord of the Rings'),
(103, 'A Game of Thrones'),
(104, 'Good Omens'),
(105, 'The Colour of Magic');

CREATE TABLE Books_Authors (
    AuthorID INT,
    BookID INT,
    PRIMARY KEY (AuthorID, BookID),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

INSERT INTO Books_Authors (AuthorID, BookID) VALUES 
(1, 101), -- J.K. Rowling wrote "Harry Potter"
(2, 102), -- J.R.R. Tolkien wrote "The Lord of the Rings"
(3, 103), -- George R.R. Martin wrote "A Game of Thrones"
(4, 104), -- Terry Pratchett co-wrote "Good Omens"
(5, 104), -- Neil Gaiman co-wrote "Good Omens"
(4, 105);

select 
a.Name, b.Title
from Authors a 
Join Books_Authors ba on a.AuthorID=ba.AuthorID
join Books b on b.BookID=ba.BookID

--22 nd task, Hard-level tasks
Select p.ProductName from Products p
inner join Categories c on p.ProductID=c.CategoryID
where p.Category!='Electronics'

--23 rd task, Hard-level tasks
select * from Orders
Cross Join Products
where Quantity>100

--24 th task, Hard-level tasks
select e.Name from Employees e
join Departments d on e.EmployeeID=d.DepartmentID
and e.HireDate<= DATEADD(Year, -5, Getdate())

--25 th task, Hard-level tasks
Select e.Name,d.DepartmentName from  Employees e 
inner join Departments d on e.EmployeeID=d.DepartmentID

Select e.Name,d.DepartmentName from  Employees e 
left join Departments d on e.EmployeeID=d.DepartmentID

--26 th task, Hard-level tasks
alter table Suppliers
add Category varchar(20)

update Suppliers
set Category='A'
where ProductID=1

update Suppliers
set Category='B'
where ProductID=2

update Suppliers
set Category='C'
where ProductID=3

update Suppliers
set Category='A'
where ProductID=4

update Suppliers
set Category='A'
where ProductID=5

Select * from Products2
cross join Suppliers
where Category='A'

--27 th task, Hard-level tasks
select * from Customers c 
inner join Orders o on c.CustomerID=o.CustomerID
where Quantity>=10

--28 th task, Hard-level tasks
create table Students1 (StudentID INT primary key, StudentName varchar(50))
insert into Students1  values (1, 'Max'), (2, 'Yura'), (3, 'Beruniy')

create table Courses1 ( CourseID int primary Key, CourseName varchar(40))
insert into Courses1 values (1, 'Mathematics'), (2, 'Physics'), (3, 'Literature')

create table StudentCourses1 (StudentID int,
StudentName varchar(50),
CourseID int,
CourseName varchar(40),
Primary Key (StudentID, CourseID),
Foreign Key (StudentID) references Students1(StudentID),
Foreign key (CourseID) references  Courses1 (CourseID))

insert into StudentCourses1 values (1, 'Max', 1, 'Mathematics'),
(2, 'Yura', 2, 'Physics'), (3, 'Beruniy', 3, 'Literature'),
(3, 'Beruniy', 1, 'Mathematics'),(1, 'Yura', 2, 'Physics')

select CourseName, Count(CourseName) as Course_Count
from StudentCourses1 group by CourseName

--29 th task, Hard-level tasks
select * from Employees
select * from Departments

select e.Name from Employees e 
left join Departments d on e.EmployeeID=d.DepartmentID
where d.DepartmentName='Marketing'

