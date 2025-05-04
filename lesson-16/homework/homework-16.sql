create database homework16
use homework16

CREATE TABLE Numbers1(Number INT)

INSERT INTO Numbers1 VALUES (5),(9),(8),(6),(7)

CREATE TABLE FindSameCharacters
(
     Id INT
    ,Vals VARCHAR(10)
)
 
INSERT INTO FindSameCharacters VALUES
(1,'aa'),
(2,'cccc'),
(3,'abc'),
(4,'aabc'),
(5,NULL),
(6,'a'),
(7,'zzz'),
(8,'abc')



CREATE TABLE RemoveDuplicateIntsFromNames
(
      PawanName INT
    , Pawan_slug_name VARCHAR(1000)
)
 
 
INSERT INTO RemoveDuplicateIntsFromNames VALUES
(1,  'PawanA-111'  ),
(2, 'PawanB-123'   ),
(3, 'PawanB-32'    ),
(4, 'PawanC-4444' ),
(5, 'PawanD-3'  )




CREATE TABLE Example
(
Id       INTEGER IDENTITY(1,1) PRIMARY KEY,
String VARCHAR(30) NOT NULL
);


INSERT INTO Example VALUES('123456789'),('abcdefghi');


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    DepartmentID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, DepartmentID, FirstName, LastName, Salary) VALUES
(1, 1, 'John', 'Doe', 60000.00),
(2, 1, 'Jane', 'Smith', 65000.00),
(3, 2, 'James', 'Brown', 70000.00),
(4, 3, 'Mary', 'Johnson', 75000.00),
(5, 4, 'Linda', 'Williams', 80000.00),
(6, 2, 'Michael', 'Jones', 85000.00),
(7, 1, 'Robert', 'Miller', 55000.00),
(8, 3, 'Patricia', 'Davis', 72000.00),
(9, 4, 'Jennifer', 'García', 77000.00),
(10, 1, 'William', 'Martínez', 69000.00);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'Finance'),
(5, 'IT'),
(6, 'Operations'),
(7, 'Customer Service'),
(8, 'R&D'),
(9, 'Legal'),
(10, 'Logistics');

CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    EmployeeID INT,
    ProductID INT,
    SalesAmount DECIMAL(10, 2),
    SaleDate DATE
);
INSERT INTO Sales (SalesID, EmployeeID, ProductID, SalesAmount, SaleDate) VALUES
-- January 2025
(1, 1, 1, 1550.00, '2025-01-02'),
(2, 2, 2, 2050.00, '2025-01-04'),
(3, 3, 3, 1250.00, '2025-01-06'),
(4, 4, 4, 1850.00, '2025-01-08'),
(5, 5, 5, 2250.00, '2025-01-10'),
(6, 6, 6, 1450.00, '2025-01-12'),
(7, 7, 1, 2550.00, '2025-01-14'),
(8, 8, 2, 1750.00, '2025-01-16'),
(9, 9, 3, 1650.00, '2025-01-18'),
(10, 10, 4, 1950.00, '2025-01-20'),
(11, 1, 5, 2150.00, '2025-02-01'),
(12, 2, 6, 1350.00, '2025-02-03'),
(13, 3, 1, 2050.00, '2025-02-05'),
(14, 4, 2, 1850.00, '2025-02-07'),
(15, 5, 3, 1550.00, '2025-02-09'),
(16, 6, 4, 2250.00, '2025-02-11'),
(17, 7, 5, 1750.00, '2025-02-13'),
(18, 8, 6, 1650.00, '2025-02-15'),
(19, 9, 1, 2550.00, '2025-02-17'),
(20, 10, 2, 1850.00, '2025-02-19'),
(21, 1, 3, 1450.00, '2025-03-02'),
(22, 2, 4, 1950.00, '2025-03-05'),
(23, 3, 5, 2150.00, '2025-03-08'),
(24, 4, 6, 1700.00, '2025-03-11'),
(25, 5, 1, 1600.00, '2025-03-14'),
(26, 6, 2, 2050.00, '2025-03-17'),
(27, 7, 3, 2250.00, '2025-03-20'),
(28, 8, 4, 1350.00, '2025-03-23'),
(29, 9, 5, 2550.00, '2025-03-26'),
(30, 10, 6, 1850.00, '2025-03-29'),
(31, 1, 1, 2150.00, '2025-04-02'),
(32, 2, 2, 1750.00, '2025-04-05'),
(33, 3, 3, 1650.00, '2025-04-08'),
(34, 4, 4, 1950.00, '2025-04-11'),
(35, 5, 5, 2050.00, '2025-04-14'),
(36, 6, 6, 2250.00, '2025-04-17'),
(37, 7, 1, 2350.00, '2025-04-20'),
(38, 8, 2, 1800.00, '2025-04-23'),
(39, 9, 3, 1700.00, '2025-04-26'),
(40, 10, 4, 2000.00, '2025-04-29'),
(41, 1, 5, 2200.00, '2025-05-03'),
(42, 2, 6, 1650.00, '2025-05-07'),
(43, 3, 1, 2250.00, '2025-05-11'),
(44, 4, 2, 1800.00, '2025-05-15'),
(45, 5, 3, 1900.00, '2025-05-19'),
(46, 6, 4, 2000.00, '2025-05-23'),
(47, 7, 5, 2400.00, '2025-05-27'),
(48, 8, 6, 2450.00, '2025-05-31'),
(49, 9, 1, 2600.00, '2025-06-04'),
(50, 10, 2, 2050.00, '2025-06-08'),
(51, 1, 3, 1550.00, '2025-06-12'),
(52, 2, 4, 1850.00, '2025-06-16'),
(53, 3, 5, 1950.00, '2025-06-20'),
(54, 4, 6, 1900.00, '2025-06-24'),
(55, 5, 1, 2000.00, '2025-07-01'),
(56, 6, 2, 2100.00, '2025-07-05'),
(57, 7, 3, 2200.00, '2025-07-09'),
(58, 8, 4, 2300.00, '2025-07-13'),
(59, 9, 5, 2350.00, '2025-07-17'),
(60, 10, 6, 2450.00, '2025-08-01');

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    CategoryID INT,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, CategoryID, ProductName, Price) VALUES
(1, 1, 'Laptop', 1000.00),
(2, 1, 'Smartphone', 800.00),
(3, 2, 'Tablet', 500.00),
(4, 2, 'Monitor', 300.00),
(5, 3, 'Headphones', 150.00),
(6, 3, 'Mouse', 25.00),
(7, 4, 'Keyboard', 50.00),
(8, 4, 'Speaker', 200.00),
(9, 5, 'Smartwatch', 250.00),
(10, 5, 'Camera', 700.00);

--1 st question
--Create a numbers table using a recursive query from 1 to 1000.
with cte as (
select 1 as numbers 
union all
select numbers+1 from cte
where numbers<1000
)
select * from cte
OPTION (MAXRECURSION 0)

--2 nd question
--Write a query to find the total sales per employee using a derived table.(Sales, Employees)
select Emp.EmployeeID,FirstName,LastName,Total_Sale from Employees as Emp join
(select EmployeeID,Sum(SalesAmount) as Total_Sale from Sales
group by EmployeeID) as S on Emp.EmployeeID=S.EmployeeID

--3 rd question
--Create a CTE to find the average salary of employees.(Employees)
with cte as (
Select Avg(Salary) as Average_Salary from Employees

)
select * from cte
--4 th question
--Write a query using a derived table to find the highest sales for each product.(Sales, Products)
select P.ProductID,P.ProductName,P.Price,S.Max_Sale from Products as P
join (Select ProductID, Max(SalesAmount) as Max_Sale from Sales
group by ProductID) as S on P.ProductID=S.ProductID

--5 th question
--Beginning at 1, write a statement to double the number for each record, the max value you get should be less than 1000000.
With cte as (
select 1 number 
union all
select number*2 from cte where number*2<1000000
)
select * from cte
option (Maxrecursion 0)

--6 th question
--Use a CTE to get the names of employees who have made more than 5 sales.(Sales, Employees)
With cte as (
Select EmployeeID,Count(SalesID) as Sales_Count from Sales
group by EmployeeID having COUNT(*)>5
)
select Emp.EmployeeID,Emp.FirstName,Emp.LastName,ct.Sales_Count from Employees as Emp join cte as ct on Emp.EmployeeID=ct.EmployeeID

--7 th question
--Write a query using a CTE to find all products with sales greater than $500.(Sales, Products)
with cte as (
select ProductID,Sum(SalesAmount) as Sum_Product from Sales
group by ProductID having Sum(SalesAmount)>500
)
Select P.ProductID,P.ProductName,ct.Sum_Product from Products as P join cte as ct on P.ProductID=ct.ProductID
--8 th question
--Create a CTE to find employees with salaries above the average salary.(Employees)
With cte as (
select  Avg(Salary) as Aver_Salary from Employees

)
select EmployeeID,FirstName,LastName,Salary from Employees as Emp cross join cte as ct
where Emp.Salary>ct.Aver_Salary
--9 th question
--Write a query using a derived table to find the top 5 employees by the number of orders made.(Employees, Sales)
select top 5 E.EmployeeID,E.FirstName,E.LastName,S.CounT_orders from Employees as E join 
(select EmployeeID,Count(SalesID) as CounT_orders from Sales
group by EmployeeID) as S on E.EmployeeID=S.EmployeeID
--10 th question
--Write a query using a derived table to find the sales per product category.(Sales, Products)

SELECT 
    p.CategoryID,
    cat_sales.TotalSales
FROM 
    (
        SELECT 
            pr.CategoryID,
            SUM(s.SalesAmount) AS TotalSales
        FROM 
            Sales s
        JOIN 
            Products pr ON s.ProductID = pr.ProductID
        GROUP BY 
            pr.CategoryID
    ) AS cat_sales
JOIN 
    Products p ON cat_sales.CategoryID = p.CategoryID
GROUP BY 
    p.CategoryID, cat_sales.TotalSales;
--11 th question
--Write a script to return the factorial of each value next to it.(Numbers1)

WITH FactorialCTE AS (
    SELECT 
        Number,
        1 AS Counter,
        1 AS Factorial
    FROM Numbers1

    UNION ALL

    SELECT 
        f.Number,
        Counter + 1,
        Factorial * (Counter + 1)
    FROM 
        FactorialCTE f
    WHERE 
        Counter + 1 <= f.Number
)

SELECT 
    Number, 
    MAX(Factorial) AS Factorial
FROM 
    FactorialCTE
GROUP BY 
    Number
ORDER BY 
    Number;
--12 th question
--This script uses recursion to split a string into rows of substrings for each character in the string.(Example)
WITH SplitChars AS (
    SELECT 
        Id,
        CAST(LEFT(String, 1) AS VARCHAR(1)) AS Character,
        SUBSTRING(String, 2, LEN(String)) AS Remaining
    FROM Example

    UNION ALL

    SELECT 
        Id,
        LEFT(Remaining, 1),
        SUBSTRING(Remaining, 2, LEN(Remaining))
    FROM SplitChars
    WHERE LEN(Remaining) > 0
)
SELECT 
    Id,
    Character
FROM 
    SplitChars
ORDER BY 
    Id, 
    Character
OPTION (MAXRECURSION 0);


--13 th question
--Use a CTE to calculate the sales difference between the current month and the previous month.(Sales)
Select * from Sales

WITH MonthlySales AS (
    SELECT 
        DATEFROMPARTS(YEAR(SaleDate), MONTH(SaleDate), 1) AS MonthStart,
        SUM(SalesAmount) AS TotalSales
    FROM Sales
    WHERE SaleDate >= '2025-03-01' AND SaleDate < '2025-05-01'
    GROUP BY 
        DATEFROMPARTS(YEAR(SaleDate), MONTH(SaleDate), 1)
),
SalesDiff AS (
    SELECT 
        MonthStart,
        TotalSales,
        LAG(TotalSales) OVER (ORDER BY MonthStart) AS PreviousMonthSales
    FROM MonthlySales
)
SELECT 
    FORMAT(MonthStart, 'yyyy-MM') AS YearMonth,
    TotalSales,
    PreviousMonthSales,
    TotalSales - PreviousMonthSales AS SalesDifference
FROM SalesDiff
WHERE MonthStart = '2025-04-01';
--14 th question
--Create a derived table to find employees with sales over $45000 in each quarter.(Sales, Employees)
Select * from Sales
select * from Employees

SELECT 
    e.EmployeeID,
    e.FirstName,
    e.LastName
FROM 
    (
        SELECT 
            EmployeeID,
            DATEPART(QUARTER, SaleDate) AS Quarter,
            SUM(SalesAmount) AS TotalSales
        FROM Sales
        GROUP BY 
            EmployeeID,
            DATEPART(QUARTER, SaleDate)
        HAVING 
            SUM(SalesAmount) > 45000
    ) AS QuarterlySales
JOIN Employees e ON e.EmployeeID = QuarterlySales.EmployeeID
GROUP BY 
    e.EmployeeID, e.FirstName, e.LastName
HAVING 
    COUNT(DISTINCT QuarterlySales.Quarter) = 2 
ORDER BY 
    e.EmployeeID;
--15 th question
--This script uses recursion to calculate Fibonacci numbers
WITH FibonacciCTE (Position, FibValue, PrevValue) AS (
   
    SELECT 1 AS Position, 0 AS FibValue, 1 AS PrevValue
    UNION ALL
    SELECT 
        Position + 1,
        PrevValue,
        FibValue + PrevValue
    FROM FibonacciCTE
    WHERE Position < 30  
)
SELECT 
    Position,
    FibValue
FROM FibonacciCTE
OPTION (MAXRECURSION 0)

--16 th question
--Find a string where all characters are the same and the length is greater than 1.(FindSameCharacters)
SELECT *
FROM Example
WHERE LEN(String) > 1
  AND LEN(String) = LEN(REPLACE(String, LEFT(String, 1), ''));
--17 th question
--Create a numbers table that shows all numbers 1 through n and their order gradually increasing by the next number in the sequence.
--(Example:n=5 | 1, 12, 123, 1234, 12345)


DECLARE @n INT = 5; 

WITH NumberSequence AS (
    SELECT 
        1 AS Num,
        CAST('1' AS VARCHAR(MAX)) AS SequenceStr
    UNION ALL
    SELECT 
        Num + 1,
        SequenceStr + CAST(Num + 1 AS VARCHAR)
    FROM NumberSequence
    WHERE Num + 1 <= @n
)
SELECT SequenceStr
FROM NumberSequence
OPTION (MAXRECURSION 0);
--18 th question
--Write a query using a derived table to find the employees who have made the most sales in the last 6 months.(Employees,Sales)
Select Emp.EmployeeID,FirstName,LastName,HalF.Sale_Sum from (
select EmployeeID,Sum(SalesAmount) as Sale_Sum from Sales
where SaleDate>'2025-02-01' and SaleDate<'2025-08-01'
group by EmployeeID) as HalF join Employees as Emp on Emp.EmployeeID=HalF.EmployeeID
group by Emp.EmployeeID,FirstName,LastName,HalF.Sale_Sum
order by HalF.Sale_Sum desc

--19 th question
--Write a T-SQL query to remove the duplicate integer values present in the string column. 
--Additionally, remove the single integer character that appears in the string.(RemoveDuplicateIntsFromNames)

WITH Extracted AS (
    SELECT 
        PawanName,
        Pawan_slug_name,
        LEFT(Pawan_slug_name, CHARINDEX('-', Pawan_slug_name)) AS NamePart,
        RIGHT(Pawan_slug_name, LEN(Pawan_slug_name) - CHARINDEX('-', Pawan_slug_name)) AS NumberPart
    FROM RemoveDuplicateIntsFromNames
),
Filtered AS (
    SELECT 
        PawanName,
        NamePart,
        NumberPart,
        CASE 
            WHEN LEN(NumberPart) = 1 THEN ''  -- Remove single-digit numbers
            ELSE (
                -- Remove duplicate digits using XML trick
                SELECT '' + value AS [text()]
                FROM (
                    SELECT DISTINCT SUBSTRING(NumberPart, v.number, 1) AS value
                    FROM master.dbo.spt_values v
                    WHERE v.type = 'P'
                      AND v.number BETWEEN 1 AND LEN(NumberPart)
                ) AS digits
                ORDER BY value
                FOR XML PATH('')
            )
        END AS CleanedNumber
    FROM Extracted
)
SELECT 
    PawanName,
    NamePart + CleanedNumber AS Cleaned_slug_name
FROM Filtered;