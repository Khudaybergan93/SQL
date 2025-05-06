create database homework19
use homework19

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(50),
    Salary DECIMAL(10,2)
);

CREATE TABLE DepartmentBonus (
    Department NVARCHAR(50) PRIMARY KEY,
    BonusPercentage DECIMAL(5,2)
);

INSERT INTO Employees VALUES
(1, 'John', 'Doe', 'Sales', 5000),
(2, 'Jane', 'Smith', 'Sales', 5200),
(3, 'Mike', 'Brown', 'IT', 6000),
(4, 'Anna', 'Taylor', 'HR', 4500);

INSERT INTO DepartmentBonus VALUES
('Sales', 10),
('IT', 15),
('HR', 8);

--Part 1: Stored Procedure Tasks
--1 st question
--Create a stored procedure that:

--Creates a temp table #EmployeeBonus
--Inserts EmployeeID, FullName (FirstName + LastName), Department, Salary, and BonusAmount into it
--(BonusAmount = Salary * BonusPercentage / 100)
--Then, selects all data from the temp table.

Create PROCEDURE sp_Employee_Information
    @BonusPercentage FLOAT
AS
BEGIN
  
    CREATE TABLE #EmployeeBonus (
        EmployeeID INT,
        FullName NVARCHAR(100),
        Department NVARCHAR(50),
        Salary DECIMAL(10,2),
        BonusAmount DECIMAL(10,2)
    );

    INSERT INTO #EmployeeBonus (EmployeeID, FullName, Department, Salary, BonusAmount)
    SELECT
        EmployeeID,
        CONCAT(FirstName, ' ', LastName) AS FullName,
        Department,
        Salary,
        Salary * @BonusPercentage / 100 AS BonusAmount
		
    FROM Employees;

    SELECT * FROM #EmployeeBonus;
END;

EXEC sp_Employee_Information @BonusPercentage = 20
--2 nd question 
--Create a stored procedure that:

--Accepts a department name and an increase percentage as parameters
--Update salary of all employees in the given department by the given percentage
--Returns updated employees from that department.

create Procedure sp_Employee_Percentage @Department NVARCHAR(50), @percentage Float
as
begin 
Select EmployeeID,CONCAT(FirstName, ' ', LastName) AS FullName,Department,Salary,
@Department as Increased_Department,Salary+Salary*@percentage/100 as increased_Salary from employees
where Department=@Department;
end
exec  sp_Employee_Percentage @Department='Sales', @percentage=25
--Part 2: MERGE Tasks

CREATE TABLE Products_Current (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    Price DECIMAL(10,2)
);

CREATE TABLE Products_New (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    Price DECIMAL(10,2)
);

INSERT INTO Products_Current VALUES
(1, 'Laptop', 1200),
(2, 'Tablet', 600),
(3, 'Smartphone', 800);

INSERT INTO Products_New VALUES
(2, 'Tablet Pro', 700),
(3, 'Smartphone', 850),
(4, 'Smartwatch', 300);


-- 3 rd question
--Perform a MERGE operation that:

--Updates ProductName and Price if ProductID matches
--Inserts new products if ProductID does not exist
--Deletes products from Products_Current if they are missing in Products_New
--Return the final state of Products_Current after the MERGE.
merge Products_Current as Target
using Products_New as source 
on Target.ProductID=source.ProductID
when matched then
update 
set 
Target.ProductName=source.ProductName,
Target.Price=source.Price

when not matched by Target
then 
insert (ProductID,ProductName, Price) values
(source.ProductID,source.ProductName,source.Price)

when not matched by source
then 
delete;


Select * from Products_Current
select * from Products_New
--4 th question
--Each node in the tree can be one of three types:

--"Leaf": if the node is a leaf node.
--"Root": if the node is the root of the tree.
--"Inner": If the node is neither a leaf node nor a root node.
--Write a solution to report the type of each node in the tree.

--Input:

CREATE TABLE  Tree (id INT, p_id INT);
TRUNCATE TABLE Tree;
INSERT INTO Tree (id, p_id) VALUES (1, NULL);
INSERT INTO Tree (id, p_id) VALUES (2, 1);
INSERT INTO Tree (id, p_id) VALUES (3, 1);
INSERT INTO Tree (id, p_id) VALUES (4, 2);
INSERT INTO Tree (id, p_id) VALUES (5, 2);

--Output:

--id	type
--1	Root
--2	Inner
--3	Leaf
--4	Leaf
--5	Leaf
SELECT 
    t.id,
    CASE 
        WHEN t.p_id IS NULL THEN 'Root'
        WHEN t.id IN (SELECT DISTINCT p_id FROM Tree WHERE p_id IS NOT NULL) THEN 'Inner'
        ELSE 'Leaf'
    END AS type
FROM Tree t
ORDER BY t.id

--5 th question
--Confirmation Rate

--Find the confirmation rate for each user. If a user has no confirmation requests, the rate should be 0.

--Input:
CREATE TABLE  Signups (user_id INT, time_stamp DATETIME);
CREATE TABLE  Confirmations (user_id INT, time_stamp DATETIME, action VARCHAR(30) CHECK (action IN ('confirmed', 'timeout')))


INSERT INTO Signups (user_id, time_stamp) VALUES 
(3, '2020-03-21 10:16:13'),
(7, '2020-01-04 13:57:59'),
(2, '2020-07-29 23:09:44'),
(6, '2020-12-09 10:39:37');


INSERT INTO Confirmations (user_id, time_stamp, action) VALUES 
(3, '2021-01-06 03:30:46', 'timeout'),
(3, '2021-07-14 14:00:00', 'timeout'),
(7, '2021-06-12 11:57:29', 'confirmed'),
(7, '2021-06-13 12:58:28', 'confirmed'),
(7, '2021-06-14 13:59:27', 'confirmed'),
(2, '2021-01-22 00:00:00', 'confirmed'),
(2, '2021-02-28 23:59:59', 'timeout');

SELECT 
    s.user_id,
    COUNT(c.action) AS total_actions,
    SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) AS confirmed_count,
    CASE 
        WHEN COUNT(c.action) = 0 THEN 0
        ELSE ROUND(SUM(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END) * 1.0 / COUNT(c.action), 2)
    END AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id;
--6 th question
--Find employees with the lowest salary

--Input:
drop table if exists employees
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10,2)
);

INSERT INTO employees (id, name, salary) VALUES
(1, 'Alice', 50000),
(2, 'Bob', 60000),
(3, 'Charlie', 50000);
--Find all employees who have the lowest salary using subqueries.
select * from employees where salary<=
(Select Min(salary) as Min_Salary from employees) 

--7 th question
--Get Product Sales Summary

--Input:

-- Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    Category NVARCHAR(50),
    Price DECIMAL(10,2)
);

-- Sales Table
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
    Quantity INT,
    SaleDate DATE
);

INSERT INTO Products (ProductID, ProductName, Category, Price) VALUES
(1, 'Laptop Model A', 'Electronics', 1200),
(2, 'Laptop Model B', 'Electronics', 1500),
(3, 'Tablet Model X', 'Electronics', 600),
(4, 'Tablet Model Y', 'Electronics', 700),
(5, 'Smartphone Alpha', 'Electronics', 800),
(6, 'Smartphone Beta', 'Electronics', 850),
(7, 'Smartwatch Series 1', 'Wearables', 300),
(8, 'Smartwatch Series 2', 'Wearables', 350),
(9, 'Headphones Basic', 'Accessories', 150),
(10, 'Headphones Pro', 'Accessories', 250),
(11, 'Wireless Mouse', 'Accessories', 50),
(12, 'Wireless Keyboard', 'Accessories', 80),
(13, 'Desktop PC Standard', 'Computers', 1000),
(14, 'Desktop PC Gaming', 'Computers', 2000),
(15, 'Monitor 24 inch', 'Displays', 200),
(16, 'Monitor 27 inch', 'Displays', 300),
(17, 'Printer Basic', 'Office', 120),
(18, 'Printer Pro', 'Office', 400),
(19, 'Router Basic', 'Networking', 70),
(20, 'Router Pro', 'Networking', 150);

INSERT INTO Sales (SaleID, ProductID, Quantity, SaleDate) VALUES
(1, 1, 2, '2024-01-15'),
(2, 1, 1, '2024-02-10'),
(3, 1, 3, '2024-03-08'),
(4, 2, 1, '2024-01-22'),
(5, 3, 5, '2024-01-20'),
(6, 5, 2, '2024-02-18'),
(7, 5, 1, '2024-03-25'),
(8, 6, 4, '2024-04-02'),
(9, 7, 2, '2024-01-30'),
(10, 7, 1, '2024-02-25'),
(11, 7, 1, '2024-03-15'),
(12, 9, 8, '2024-01-18'),
(13, 9, 5, '2024-02-20'),
(14, 10, 3, '2024-03-22'),
(15, 11, 2, '2024-02-14'),
(16, 13, 1, '2024-03-10'),
(17, 14, 2, '2024-03-22'),
(18, 15, 5, '2024-02-01'),
(19, 15, 3, '2024-03-11'),
(20, 19, 4, '2024-04-01');
--Create a stored procedure called GetProductSalesSummary that:

--Accepts a @ProductID input
--Returns:
--ProductName
--Total Quantity Sold
--Total Sales Amount (Quantity × Price)
--First Sale Date
--Last Sale Date
--If the product has no sales, return NULL for quantity, total amount, first date, and last date, but still return the product name.


create PROCEDURE GetProductSalesSummary
    @ProductID INT
AS
BEGIN
    SELECT 
        p.ProductName,
        SUM(s.Quantity) AS TotalQuantitySold,
        SUM(s.Quantity * p.Price) AS TotalSalesAmount,
        MIN(s.SaleDate) AS FirstSaleDate,
        MAX(s.SaleDate) AS LastSaleDate
    FROM Products p
    LEFT JOIN Sales s ON p.ProductID = s.ProductID
    WHERE p.ProductID = @ProductID
    GROUP BY p.ProductName;
END;

execute GetProductSalesSummary @ProductID=1