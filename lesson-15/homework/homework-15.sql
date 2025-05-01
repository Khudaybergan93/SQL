create database lesson15
use lesson15
--1 st question
--Create a numbers table using a recursive query.
;with cte as (
select 1 as num
union All
select num + 1 from cte where num<100
)

select * from cte 


--2 nd question
--Beginning at 1, this script uses a recursive statement to double the number for each record
;with cte as (
select 1 as num
union All
select num*2
from cte
where num<100 
)
select * from cte 

--3 rd question
--Write a query to find the total sales per employee using a derived table.(Sales, Employees)
CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    EmployeeID INT,
    ProductID INT,
    SalesAmount DECIMAL(10, 2),
    SaleDate DATE
);

INSERT INTO Sales (SalesID, EmployeeID, ProductID, SalesAmount, SaleDate) VALUES
(1, 1, 1, 1500.00, '2025-01-01'),
(2, 2, 2, 2000.00, '2025-01-02'),
(3, 3, 3, 1200.00, '2025-01-03'),
(4, 4, 4, 1800.00, '2025-01-04'),
(5, 5, 5, 2200.00, '2025-01-05'),
(6, 6, 6, 1400.00, '2025-01-06'),
(7, 7, 1, 2500.00, '2025-01-07'),
(8, 8, 2, 1700.00, '2025-01-08'),
(9, 9, 3, 1600.00, '2025-01-09'),
(10, 10, 4, 1900.00, '2025-01-10'),
(11, 1, 5, 2100.00, '2025-01-11'),
(12, 2, 6, 1300.00, '2025-01-12'),
(13, 3, 1, 2000.00, '2025-01-13'),
(14, 4, 2, 1800.00, '2025-01-14'),
(15, 5, 3, 1500.00, '2025-01-15'),
(16, 6, 4, 2200.00, '2025-01-16'),
(17, 7, 5, 1700.00, '2025-01-17'),
(18, 8, 6, 1600.00, '2025-01-18'),
(19, 9, 1, 2500.00, '2025-01-19'),
(20, 10, 2, 1800.00, '2025-01-20'),
(21, 1, 3, 1400.00, '2025-01-21'),
(22, 2, 4, 1900.00, '2025-01-22'),
(23, 3, 5, 2100.00, '2025-01-23'),
(24, 4, 6, 1600.00, '2025-01-24'),
(25, 5, 1, 1500.00, '2025-01-25'),
(26, 6, 2, 2000.00, '2025-01-26'),
(27, 7, 3, 2200.00, '2025-01-27'),
(28, 8, 4, 1300.00, '2025-01-28'),
(29, 9, 5, 2500.00, '2025-01-29'),
(30, 10, 6, 1800.00, '2025-01-30'),
(31, 1, 1, 2100.00, '2025-02-01'),
(32, 2, 2, 1700.00, '2025-02-02'),
(33, 3, 3, 1600.00, '2025-02-03'),
(34, 4, 4, 1900.00, '2025-02-04'),
(35, 5, 5, 2000.00, '2025-02-05'),
(36, 6, 6, 2200.00, '2025-02-06'),
(37, 7, 1, 2300.00, '2025-02-07'),
(38, 8, 2, 1750.00, '2025-02-08'),
(39, 9, 3, 1650.00, '2025-02-09'),
(40, 10, 4, 1950.00, '2025-02-10');

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

select * from Sales

select * from Employees
--Write a query to find the total sales per employee using a derived table.(Sales, Employees)

Select E.EmployeeID,E.FirstName,E.LastName,S.EMPSALE from Employees as E join (
select EmployeeID,Sum(SalesAmount) as EMPSALE from Sales group by EmployeeID
) as S
on E.EmployeeID=S.EmployeeID

--4 th question
--Create a CTE to find the average salary of employees.(Employees)
With cte as (
Select AVG(Salary) as Aver_SALARY from Employees

)
Select * from cte

--5 th question
--Write a query using a derived table to find the highest sales for each product.(Sales, Products)
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

Select * from Sales

Select * from Products

Select P.ProductID,P.ProductName,S.MaxSALE from Products as P Join
(select ProductID,MAX(SalesAmount) as MaxSALE from Sales
group by ProductID
) as S on P.ProductID=S.ProductID
--6 th question
--Use a CTE to get the names of employees who have made more than 5 sales.(Sales, Employees)
Select * from Sales
Select * from Employees

with SalesCount  as (
Select EmployeeID,Count(SalesID) as Sale_C from Sales 
group by EmployeeID
)
Select * from SalesCount  as SC join Employees as E on E.EmployeeID=Sc.EmployeeID 
where SC.Sale_C>5

--7 th question
--Write a query using a CTE to find all products with sales greater than $500.(Sales, Products)
with CTE as (
Select ProductID,SUM(SalesAmount) as SUM_SALE from Sales
group by ProductID
)
Select ct.ProductID,P.ProductName,ct.SUM_SALE from Cte as ct join Products as P on ct.ProductID=P.ProductID
where SUM_SALE>500

--8 th question
--Create a CTE to find employees with salaries above the average salary.(Employees)
WITH AvgSalaryCTE AS (
    SELECT AVG(Salary) AS AverageSalary
    FROM Employees
)

SELECT 
    EmployeeID,
    FirstName,
    LastName,
    Salary
FROM Employees
WHERE Salary > (SELECT AverageSalary FROM AvgSalaryCTE);

--9 th question
--Write a query to find the total number of products sold using a derived table.(Sales, Products)
SELECT 
    p.ProductName,
    product_sales.total_sold
FROM Products p
JOIN (
    SELECT ProductID, COUNT(*) AS total_sold
    FROM Sales
    GROUP BY ProductID
) AS product_sales
ON p.ProductID = product_sales.ProductID
ORDER BY total_sold DESC;

--10 th question
--Use a CTE to find the names of employees who have not made any sales.(Sales, Employees)
Select * from Sales
select * from Employees


;With NoSale as(
Select EmployeeID,SUM(SalesAmount) as Sal_AMo from Sales
group by EmployeeID
) 
select E.EmployeeID,E.FirstName,E.LastName,N.Sal_AMo from Employees as E left join NoSale as N on E.EmployeeID=N.EmployeeID 
where N.Sal_AMo=0

--11 th question
--This script uses recursion to calculate factorials
WITH FactorialCTE (n, factorial) AS (
    SELECT 1 AS n, 1 AS factorial
    UNION ALL
    SELECT n + 1, (n + 1) * factorial
    FROM FactorialCTE
    WHERE n < 10
)
SELECT *
FROM FactorialCTE;

--12 th question
--This script uses recursion to calculate Fibonacci numbers
WITH FibonacciCTE(n, fib1, fib2) AS (
    SELECT 1, 0, 1
    UNION ALL
    SELECT n + 1, fib2, fib1 + fib2
    FROM FibonacciCTE
    WHERE n < 10
)
SELECT n, fib1 AS Fibonacci
FROM FibonacciCTE
OPTION (MAXRECURSION 100)

--13 th question
--This script uses recursion to split a string into rows of substrings for each character in the string.(Example)
WITH SplitString AS (
    SELECT 1 AS pos, SUBSTRING('HELLO', 1, 1) AS char_part
    UNION ALL
    SELECT pos + 1, SUBSTRING('HELLO', pos + 1, 1)
    FROM SplitString
    WHERE pos < LEN('HELLO')
)
SELECT pos, char_part
FROM SplitString
OPTION (MAXRECURSION 100);

--14 th question
--Create a CTE to rank employees based on their total sales.(Employees, Sales)
Select * from Sales
Select * from Employees

With cte as (
Select EmployeeID,Sum(SalesAmount) as SUMSALE from Sales
group by EmployeeID
)
Select E.EmployeeID,E.FirstName,E.LastName,c.SUMSALE from Employees as E join cte as c on E.EmployeeID=c.EmployeeID
order by SUMSALE desc

--15 th question
--Write a query using a derived table to find the top 5 employees by the number of orders made.(Employees, Sales)
Select * from Sales
Select * from Employees

Select top 5 E.EmployeeID,E.FirstName,E.LastName,S.CNT from Employees as E
Join (Select EmployeeID,Count(SalesID) as CNT from Sales
group by EmployeeID) as S
on E.EmployeeID=S.EmployeeID
--16 th question
--Use a CTE to calculate the sales difference between the current month and the previous month.(Sales)


WITH MonthlySales AS (
    
    SELECT 
        YEAR(SaleDate) AS SaleYear,
        MONTH(SaleDate) AS SaleMonth,
        SUM(SalesAmount) AS TotalSales
    FROM Sales
    GROUP BY YEAR(SaleDate), MONTH(SaleDate)
),
SalesComparison AS (
    
    SELECT 
        MS1.SaleYear,
        MS1.SaleMonth,
        MS1.TotalSales AS CurrentMonthSales,
        COALESCE(MS2.TotalSales, 0) AS PreviousMonthSales
    FROM MonthlySales MS1
    LEFT JOIN MonthlySales MS2 
        ON MS1.SaleYear = MS2.SaleYear 
        AND MS1.SaleMonth = MS2.SaleMonth + 1

    UNION ALL
    SELECT 
        MS1.SaleYear,
        MS1.SaleMonth,
        MS1.TotalSales AS CurrentMonthSales,
        COALESCE(MS2.TotalSales, 0) AS PreviousMonthSales
    FROM MonthlySales MS1
    LEFT JOIN MonthlySales MS2 
        ON MS1.SaleYear = MS2.SaleYear - 1 
        AND MS1.SaleMonth = MS2.SaleMonth + 12
)
SELECT 
    SaleYear,
    SaleMonth,
    CurrentMonthSales,
    PreviousMonthSales,
    (CurrentMonthSales - PreviousMonthSales) AS SalesDifference
FROM SalesComparison
ORDER BY SaleYear DESC, SaleMonth DESC;
--17 th question
--Write a query using a derived table to find the sales per product category.(Sales, Products)
Select * from Sales
select * from Products


select P.CategoryID,Sum(S.SalesAmount) as Tot_Sale from Sales as S Join
(Select * from Products) as P on S.ProductID=P.ProductID
group by P.CategoryID
--18 th question
--Use a CTE to rank products based on total sales in the last year.(Sales, Products)
---All dates are entered with this year, so I used this year
Select * from Sales
select * from Products

with cte as (
Select ProductID,Sum(SalesAmount) as Total_SALES from Sales
group by ProductID
) 
select P.CategoryID,P.ProductID,P.ProductName,c.Total_SALES from Products as P join cte as c on P.ProductID=c.ProductID
order by Total_SALES desc
--19 th question
--Create a derived table to find employees with sales over $5000 in each quarter.(Sales, Employees)
---Only 2 month records are entered in the table, so I used only 5000 $
Select S.EmployeeID,Sum(SalesAmount) as Tot_Sale from Sales as S
join (
Select * from Employees) as E on S.EmployeeID=E.EmployeeID
group by S.EmployeeID having Sum(SalesAmount)>5000

--20 th question
--Use a derived table to find the top 3 employees by total sales amount in the last month.(Sales, Employees)
Select * from Sales
select * from Employees

Select top 3 S.EmployeeID,Sum(SalesAmount) as Sale_AM from Sales as S
Join (
select * from Employees) as E on S.EmployeeID=E.EmployeeID
where S.SaleDate like '2025-02%'
group by S.EmployeeID order by  Sale_AM desc 

--21 st question
--Create a numbers table that shows all numbers 1 through n and their order gradually increasing by the next number in the sequence.
--(Example:n=5 | 1, 12, 123, 1234, 12345)
DECLARE @n INT = 5;  -- Set the maximum value

WITH NumbersCTE (num, next_digit) AS (
    SELECT CAST('1' AS VARCHAR(100)), 2
    UNION ALL
    SELECT 
        CAST(num + CAST(next_digit AS VARCHAR) AS VARCHAR(100)),
        next_digit + 1
    FROM NumbersCTE
    WHERE next_digit <= @n
)
SELECT num
FROM NumbersCTE;

--22 nd question
--Write a query using a derived table to find the employees who have made the most sales in the last 6 months.(Employees,Sales)
select * from Employees
select * from Sales
--Only 2 month records are entered in the table, so I used only last 1 month 
SELECT 
    E.EmployeeID,
    E.FirstName,
    E.LastName,
    SalesSummary.TotalSales
FROM 
    Employees E
JOIN (
    SELECT 
        EmployeeID,
        SUM(SalesAmount) AS TotalSales
    FROM 
        Sales
    WHERE 
        SaleDate >= DATEADD(MONTH, -1, GETDATE()) 
    GROUP BY 
        EmployeeID
) AS SalesSummary
    ON E.EmployeeID = SalesSummary.EmployeeID
WHERE 
    SalesSummary.TotalSales = (
        SELECT MAX(EmployeeSales.TotalSales)
        FROM (
            SELECT 
                EmployeeID,
                SUM(SalesAmount) AS TotalSales
            FROM 
                Sales
            WHERE 
                SaleDate >= DATEADD(MONTH, -1, GETDATE())
            GROUP BY 
                EmployeeID
        ) AS EmployeeSales
    );


--23 rd question
--This script uses recursion to display a running total where the sum cannot go higher than 10 or lower than 0.(Numbers)
CREATE TABLE Numbers
(
Id         INTEGER,
StepNumber INTEGER,
[Count]    INTEGER
);


INSERT INTO Numbers VALUES
 (1,1,1) 
,(1,2,-2)
,(1,3,-1)
,(1,4,12)
,(1,5,-2)
,(2,1,7)
,(2,2,-3);

WITH RecursiveSum AS (
    
    SELECT 
        Id,
        StepNumber,
        [Count],
        CASE 
            WHEN [Count] < 0 THEN 0
            WHEN [Count] > 10 THEN 10
            ELSE [Count]
        END AS RunningTotal
    FROM Numbers
    WHERE StepNumber = 1

    UNION ALL

    
    SELECT 
        N.Id,
        N.StepNumber,
        N.[Count],
        CASE 
            WHEN RS.RunningTotal + N.[Count] < 0 THEN 0
            WHEN RS.RunningTotal + N.[Count] > 10 THEN 10
            ELSE RS.RunningTotal + N.[Count]
        END AS RunningTotal
    FROM Numbers N
    JOIN RecursiveSum RS 
        ON N.Id = RS.Id AND N.StepNumber = RS.StepNumber + 1
)

SELECT *
FROM RecursiveSum
ORDER BY Id, StepNumber;


--24 th question
--Given a table of employee shifts, and another table of their activities, 
--merge the two tables and write an SQL statement that produces the desired output. 
--If an employee is scheduled and does not have an activity planned, label the time frame as “Work”. (Schedule,Activity)
CREATE TABLE Schedule
(
ScheduleID  CHAR(1) PRIMARY KEY,
StartTime   DATETIME NOT NULL,
EndTime     DATETIME NOT NULL
);

CREATE TABLE Activity
(
ScheduleID    CHAR(1) REFERENCES Schedule (ScheduleID),
ActivityName  VARCHAR(100),
StartTime     DATETIME,
EndTime       DATETIME,
PRIMARY KEY (ScheduleID, ActivityName, StartTime, EndTime)
);

INSERT INTO Schedule (ScheduleID, StartTime, EndTime) VALUES
('A',CAST('2021-10-01 10:00:00' AS DATETIME),CAST('2021-10-01 15:00:00' AS DATETIME)),
('B',CAST('2021-10-01 10:15:00' AS DATETIME),CAST('2021-10-01 12:15:00' AS DATETIME));


INSERT INTO Activity (ScheduleID, ActivityName, StartTime, EndTime) VALUES
('A','Meeting',CAST('2021-10-01 10:00:00' AS DATETIME),CAST('2021-10-01 10:30:00' AS DATETIME)),
('A','Break',CAST('2021-10-01 12:00:00' AS DATETIME),CAST('2021-10-01 12:30:00' AS DATETIME)),
('A','Meeting',CAST('2021-10-01 13:00:00' AS DATETIME),CAST('2021-10-01 13:30:00' AS DATETIME)),
('B','Break',CAST('2021-10-01 11:00:00'AS DATETIME),CAST('2021-10-01 11:15:00' AS DATETIME));

select * from Schedule
select * from Activity


WITH TimeBlocks AS (
    SELECT 
        ScheduleID,
        StartTime AS BlockStart,
        DATEADD(MINUTE, 1, StartTime) AS BlockEnd
    FROM Schedule

    UNION ALL

    SELECT 
        tb.ScheduleID,
        tb.BlockEnd,
        DATEADD(MINUTE, 1, tb.BlockEnd)
    FROM TimeBlocks tb
    JOIN Schedule s ON tb.ScheduleID = s.ScheduleID
    WHERE tb.BlockEnd < s.EndTime
),

-- Step 2: Match each time block to an activity
LabeledBlocks AS (
    SELECT 
        tb.ScheduleID,
        tb.BlockStart,
        tb.BlockEnd,
        COALESCE(a.ActivityName, 'Work') AS ActivityName
    FROM TimeBlocks tb
    LEFT JOIN Activity a 
        ON tb.ScheduleID = a.ScheduleID
       AND tb.BlockStart >= a.StartTime
       AND tb.BlockEnd <= a.EndTime
)

-- Step 3: Final Output
SELECT 
    ScheduleID,
    BlockStart,
    BlockEnd,
    ActivityName
FROM LabeledBlocks
ORDER BY ScheduleID, BlockStart
OPTION (MAXRECURSION 10000)

--25 th question
--Create a complex query that uses both a CTE and a derived table to calculate sales totals for each department and product.
--(Employees, Sales, Products, Departments)
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


WITH EmployeeSales AS (
    SELECT 
        s.SalesID,
        s.EmployeeID,
        e.DepartmentID,
        d.DepartmentName,
        s.ProductID,
        s.SalesAmount
    FROM Sales s
    JOIN Employees e ON s.EmployeeID = e.EmployeeID
    JOIN Departments d ON e.DepartmentID = d.DepartmentID
)

-- Step 2: Use derived table to calculate total sales per Department and Product
SELECT 
    es.DepartmentID,
    es.DepartmentName,
    p.ProductID,
    p.ProductName,
    SUM(es.SalesAmount) AS TotalSales
FROM (
    SELECT 
        DepartmentID,
        DepartmentName,
        ProductID,
        SalesAmount
    FROM EmployeeSales
) AS es
JOIN Products p ON es.ProductID = p.ProductID
GROUP BY es.DepartmentID, es.DepartmentName, p.ProductID, p.ProductName
ORDER BY es.DepartmentID, p.ProductID;