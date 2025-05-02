create database lesso21
use lesso21
CREATE TABLE ProductSales (
    SaleID INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    SaleDate DATE NOT NULL,
    SaleAmount DECIMAL(10, 2) NOT NULL,
    Quantity INT NOT NULL,
    CustomerID INT NOT NULL
);

INSERT INTO ProductSales (SaleID, ProductName, SaleDate, SaleAmount, Quantity, CustomerID)
VALUES 
(1, 'Product A', '2023-01-01', 150.00, 2, 101),
(2, 'Product B', '2023-01-02', 200.00, 3, 102),
(3, 'Product C', '2023-01-03', 250.00, 1, 103),
(4, 'Product A', '2023-01-04', 150.00, 4, 101),
(5, 'Product B', '2023-01-05', 200.00, 5, 104),
(6, 'Product C', '2023-01-06', 250.00, 2, 105),
(7, 'Product A', '2023-01-07', 150.00, 1, 101),
(8, 'Product B', '2023-01-08', 200.00, 8, 102),
(9, 'Product C', '2023-01-09', 250.00, 7, 106),
(10, 'Product A', '2023-01-10', 150.00, 2, 107),
(11, 'Product B', '2023-01-11', 200.00, 3, 108),
(12, 'Product C', '2023-01-12', 250.00, 1, 109),
(13, 'Product A', '2023-01-13', 150.00, 4, 110),
(14, 'Product B', '2023-01-14', 200.00, 5, 111),
(15, 'Product C', '2023-01-15', 250.00, 2, 112),
(16, 'Product A', '2023-01-16', 150.00, 1, 113),
(17, 'Product B', '2023-01-17', 200.00, 8, 114),
(18, 'Product C', '2023-01-18', 250.00, 7, 115),
(19, 'Product A', '2023-01-19', 150.00, 3, 116),
(20, 'Product B', '2023-01-20', 200.00, 4, 117),
(21, 'Product C', '2023-01-21', 250.00, 2, 118),
(22, 'Product A', '2023-01-22', 150.00, 5, 119),
(23, 'Product B', '2023-01-23', 200.00, 3, 120),
(24, 'Product C', '2023-01-24', 250.00, 1, 121),
(25, 'Product A', '2023-01-25', 150.00, 6, 122),
(26, 'Product B', '2023-01-26', 200.00, 7, 123),
(27, 'Product C', '2023-01-27', 250.00, 3, 124),
(28, 'Product A', '2023-01-28', 150.00, 4, 125),
(29, 'Product B', '2023-01-29', 200.00, 5, 126),
(30, 'Product C', '2023-01-30', 250.00, 2, 127);

CREATE TABLE Employees1 (
    EmployeeID   INT PRIMARY KEY,
    Name         VARCHAR(50),
    Department   VARCHAR(50),
    Salary       DECIMAL(10,2),
    HireDate     DATE
);

INSERT INTO Employees1 (EmployeeID, Name, Department, Salary, HireDate) VALUES
(1, 'John Smith', 'IT', 60000.00, '2020-03-15'),
(2, 'Emma Johnson', 'HR', 50000.00, '2019-07-22'),
(3, 'Michael Brown', 'Finance', 75000.00, '2018-11-10'),
(4, 'Olivia Davis', 'Marketing', 55000.00, '2021-01-05'),
(5, 'William Wilson', 'IT', 62000.00, '2022-06-12'),
(6, 'Sophia Martinez', 'Finance', 77000.00, '2017-09-30'),
(7, 'James Anderson', 'HR', 52000.00, '2020-04-18'),
(8, 'Isabella Thomas', 'Marketing', 58000.00, '2019-08-25'),
(9, 'Benjamin Taylor', 'IT', 64000.00, '2021-11-17'),
(10, 'Charlotte Lee', 'Finance', 80000.00, '2016-05-09'),
(11, 'Ethan Harris', 'IT', 63000.00, '2023-02-14'),
(12, 'Mia Clark', 'HR', 53000.00, '2022-09-05'),
(13, 'Alexander Lewis', 'Finance', 78000.00, '2015-12-20'),
(14, 'Amelia Walker', 'Marketing', 57000.00, '2020-07-28'),
(15, 'Daniel Hall', 'IT', 61000.00, '2018-10-13'),
(16, 'Harper Allen', 'Finance', 79000.00, '2017-03-22'),
(17, 'Matthew Young', 'HR', 54000.00, '2021-06-30'),
(18, 'Ava King', 'Marketing', 56000.00, '2019-04-16'),
(19, 'Lucas Wright', 'IT', 65000.00, '2022-12-01'),
(20, 'Evelyn Scott', 'Finance', 81000.00, '2016-08-07');

--1 st question
--Write a query to assign a row number to each sale based on the SaleDate.


--2 nd question
--Write a query to rank products based on the total quantity sold (use DENSE_RANK())


--3 rd question
--Write a query to identify the top sale for each customer based on the SaleAmount.



--4 th question
--Write a query to display each sale's amount along with the next sale amount in the order of SaleDate using the LEAD() function


--5 th question
--Write a query to display each sale's amount along with the previous sale amount in the order of SaleDate using the LAG() function


--6 th question
--Write a query to rank each sale amount within each product category.



--7 th question
--Write a query to identify sales amounts that are greater than the previous sale's amount



--8 th question
--Write a query to calculate the difference in sale amount from the previous sale for every product


--9 th question
--Write a query to compare the current sale amount with the next sale amount in terms of percentage change.



--10 th question
--Write a query to calculate the ratio of the current sale amount to the previous sale amount within the same product.



--11 th question
--Write a query to calculate the difference in sale amount from the very first sale of that product.


--12 th use less21
CREATE TABLE ProductSales (
    SaleID INT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL,
    SaleDate DATE NOT NULL,
    SaleAmount DECIMAL(10, 2) NOT NULL,
    Quantity INT NOT NULL,
    CustomerID INT NOT NULL
);

INSERT INTO ProductSales (SaleID, ProductName, SaleDate, SaleAmount, Quantity, CustomerID)
VALUES 
(1, 'Product A', '2023-01-01', 150.00, 2, 101),
(2, 'Product B', '2023-01-02', 200.00, 3, 102),
(3, 'Product C', '2023-01-03', 250.00, 1, 103),
(4, 'Product A', '2023-01-04', 150.00, 4, 101),
(5, 'Product B', '2023-01-05', 200.00, 5, 104),
(6, 'Product C', '2023-01-06', 250.00, 2, 105),
(7, 'Product A', '2023-01-07', 150.00, 1, 101),
(8, 'Product B', '2023-01-08', 200.00, 8, 102),
(9, 'Product C', '2023-01-09', 250.00, 7, 106),
(10, 'Product A', '2023-01-10', 150.00, 2, 107),
(11, 'Product B', '2023-01-11', 200.00, 3, 108),
(12, 'Product C', '2023-01-12', 250.00, 1, 109),
(13, 'Product A', '2023-01-13', 150.00, 4, 110),
(14, 'Product B', '2023-01-14', 200.00, 5, 111),
(15, 'Product C', '2023-01-15', 250.00, 2, 112),
(16, 'Product A', '2023-01-16', 150.00, 1, 113),
(17, 'Product B', '2023-01-17', 200.00, 8, 114),
(18, 'Product C', '2023-01-18', 250.00, 7, 115),
(19, 'Product A', '2023-01-19', 150.00, 3, 116),
(20, 'Product B', '2023-01-20', 200.00, 4, 117),
(21, 'Product C', '2023-01-21', 250.00, 2, 118),
(22, 'Product A', '2023-01-22', 150.00, 5, 119),
(23, 'Product B', '2023-01-23', 200.00, 3, 120),
(24, 'Product C', '2023-01-24', 250.00, 1, 121),
(25, 'Product A', '2023-01-25', 150.00, 6, 122),
(26, 'Product B', '2023-01-26', 200.00, 7, 123),
(27, 'Product C', '2023-01-27', 250.00, 3, 124),
(28, 'Product A', '2023-01-28', 150.00, 4, 125),
(29, 'Product B', '2023-01-29', 200.00, 5, 126),
(30, 'Product C', '2023-01-30', 250.00, 2, 127);

CREATE TABLE Employees1 (
    EmployeeID   INT PRIMARY KEY,
    Name         VARCHAR(50),
    Department   VARCHAR(50),
    Salary       DECIMAL(10,2),
    HireDate     DATE
);

INSERT INTO Employees1 (EmployeeID, Name, Department, Salary, HireDate) VALUES
(1, 'John Smith', 'IT', 60000.00, '2020-03-15'),
(2, 'Emma Johnson', 'HR', 50000.00, '2019-07-22'),
(3, 'Michael Brown', 'Finance', 75000.00, '2018-11-10'),
(4, 'Olivia Davis', 'Marketing', 55000.00, '2021-01-05'),
(5, 'William Wilson', 'IT', 62000.00, '2022-06-12'),
(6, 'Sophia Martinez', 'Finance', 77000.00, '2017-09-30'),
(7, 'James Anderson', 'HR', 52000.00, '2020-04-18'),
(8, 'Isabella Thomas', 'Marketing', 58000.00, '2019-08-25'),
(9, 'Benjamin Taylor', 'IT', 64000.00, '2021-11-17'),
(10, 'Charlotte Lee', 'Finance', 80000.00, '2016-05-09'),
(11, 'Ethan Harris', 'IT', 63000.00, '2023-02-14'),
(12, 'Mia Clark', 'HR', 53000.00, '2022-09-05'),
(13, 'Alexander Lewis', 'Finance', 78000.00, '2015-12-20'),
(14, 'Amelia Walker', 'Marketing', 57000.00, '2020-07-28'),
(15, 'Daniel Hall', 'IT', 61000.00, '2018-10-13'),
(16, 'Harper Allen', 'Finance', 79000.00, '2017-03-22'),
(17, 'Matthew Young', 'HR', 54000.00, '2021-06-30'),
(18, 'Ava King', 'Marketing', 56000.00, '2019-04-16'),
(19, 'Lucas Wright', 'IT', 65000.00, '2022-12-01'),
(20, 'Evelyn Scott', 'Finance', 81000.00, '2016-08-07');


--1 th question
--Write a query to assign a row number to each sale based on the SaleDate.
Select *,ROW_NUMBER() over (order by SaleDate) as Sale_R_N from ProductSales

--2 nd question
--Write a query to rank products based on the total quantity sold (use DENSE_RANK())
SELECT 
    ProductName,
    SUM(Quantity) AS TotalQuantitySold,
    DENSE_RANK() OVER (ORDER BY SUM(Quantity) DESC) AS Rank
FROM ProductSales
GROUP BY ProductName
ORDER BY Rank;
--3 rd question
--Write a query to identify the top sale for each customer based on the SaleAmount.
select distinct CustomerID,MAX(SaleAmount) over (partition by CustomerID order by SaleAmount) as MaxSALE from ProductSales

--4 th question
--Write a query to display each sale's amount along with the next sale amount in the order of SaleDate using the LEAD() function
Select SaleID,ProductName,SaleDate,CustomerID,SaleAmount,Lead(SaleAmount,1,0) over (order by SaleDate) as LD from ProductSales

--5 th question
--Write a query to display each sale's amount along with the previous sale amount in the order of SaleDate using the LAG() function
Select SaleID,ProductName,SaleDate,CustomerID,SaleAmount,Lag(SaleAmount,1,0) over (order by SaleDate) as LD from ProductSales

--6 th question
--Write a query to rank each sale amount within each product category.
Select *,Dense_Rank() over (partition by ProductName order by saleAmount) as RNK from ProductSales
order by ProductName,RNK

--7 th question
--Write a query to identify sales amounts that are greater than the previous sale's amount
Select * from (select *,Lag(SaleAmount,1,0) over (order by SaleDate) as Prev_Sale from ProductSales) as LG
where SaleAmount>Prev_Sale

--8 th question
--Write a query to calculate the difference in sale amount from the previous sale for every product
select SaleID,ProductName,CustomerID,SaleAmount,Lag(SaleAmount,1,0) over (order by SaleDate) as Prev_Sale,
SaleAmount-Lag(SaleAmount,1,0) over (order by SaleDate) as Differ  from ProductSales

--9 th question
--Write a query to compare the current sale amount with the next sale amount in terms of percentage change.
SELECT 
    SaleID,
    ProductName,
    SaleDate,
    SaleAmount,
    LEAD(SaleAmount) OVER (ORDER BY SaleDate) AS NextSaleAmount,
    ROUND(
        CASE 
            WHEN LEAD(SaleAmount) OVER (ORDER BY SaleDate) IS NOT NULL 
                 AND SaleAmount <> 0
            THEN ((LEAD(SaleAmount) OVER (ORDER BY SaleDate) - SaleAmount) / SaleAmount) * 100
            ELSE NULL
        END, 2
    ) AS PercentageChange
FROM ProductSales
ORDER BY SaleDate;

--10 th question
--Write a query to calculate the ratio of the current sale amount to the previous sale amount within the same product.
SELECT 
    SaleID,
    ProductName,
    SaleDate,
    SaleAmount,
    LAG(SaleAmount) OVER (PARTITION BY ProductName ORDER BY SaleDate) AS PreviousSaleAmount,
    ROUND(
        CASE 
            WHEN LAG(SaleAmount) OVER (PARTITION BY ProductName ORDER BY SaleDate) IS NOT NULL
                 AND LAG(SaleAmount) OVER (PARTITION BY ProductName ORDER BY SaleDate) <> 0
            THEN SaleAmount / LAG(SaleAmount) OVER (PARTITION BY ProductName ORDER BY SaleDate)
            ELSE NULL
        END, 2
    ) AS SaleRatio
FROM ProductSales
ORDER BY ProductName, SaleDate;

--11 th question
--Write a query to calculate the difference in sale amount from the very first sale of that product.
SELECT 
    SaleID,
    ProductName,
    SaleDate,
    SaleAmount,
    FIRST_VALUE(SaleAmount) OVER (PARTITION BY ProductName ORDER BY SaleDate) AS FirstSaleAmount,
    SaleAmount - FIRST_VALUE(SaleAmount) OVER (PARTITION BY ProductName ORDER BY SaleDate) AS DifferenceFromFirst
FROM ProductSales
ORDER BY ProductName, SaleDate;

--12 th question
--Write a query to find sales that have been increasing continuously for a product (i.e., each sale amount is greater than the previous sale amount for that product).
Select * from (Select *,Lag(SaleAmount,1,0) over (partition by ProductName order by SaleDate) as Prev_sale from ProductSales) as P_S
where SaleAmount>Prev_sale
--13 th question
--Write a query to calculate a "closing balance" for sales amounts which adds the current sale amount to a running total of previous sales.
Select *,Sum(SaleAmount) over (order by SaleDate)  as Run_Tot from ProductSales

--14 th question
--Write a query to calculate the moving average of sales amounts over the last 3 sales.
Select *,Avg(SaleAmount) over (order by SaleDate Rows between 2 preceding and current row) as Last_3_Sale from ProductSales

--15 th question
--Write a query to show the difference between each sale amount and the average sale amount.
select SaleID,ProductName,SaleDate,CustomerID,SaleAmount,AVG(SaleAmount) over (order by (select Null)) as Aver_Amount,
SaleAmount-AVG(SaleAmount) over (order by (select Null)) as Differ from ProductSales
--16 th question
--Find Employees Who Have the Same Salary Rank
Select * from Employees1

WITH RankedSalaries AS (
    SELECT 
        EmployeeID,
        Name,
        Department,
        Salary,
        DENSE_RANK() OVER (ORDER BY Salary DESC) AS SalaryRank
    FROM Employees1
),
DuplicateRanks AS (
    SELECT 
        SalaryRank
    FROM RankedSalaries
    GROUP BY SalaryRank
    HAVING COUNT(*) > 1
)
SELECT 
    r.EmployeeID,
    r.Name,
    r.Department,
    r.Salary,
    r.SalaryRank
FROM RankedSalaries r
JOIN DuplicateRanks d ON r.SalaryRank = d.SalaryRank
ORDER BY r.SalaryRank, r.EmployeeID;
--17 th question
--Identify the Top 2 Highest Salaries in Each Department
Select * from Employees1

select * from (Select *,DENSE_RANK() over (partition by Department order by salary desc) as D_R from Employees1) as Gr
where D_R<=2 order by Department,salary desc
--18 th question
--Find the Lowest-Paid Employee in Each Department
select * from (Select *,DENSE_RANK() over (partition by Department order by salary asc) as RNK from Employees1) as SubQ
where RNK<=2 order by Department,salary asc

--19 th question
--Calculate the Running Total of Salaries in Each Department
Select *,Sum(Salary) over ( order by salary) as Run_Tot_Depa from Employees1

--20 th question
--Find the Total Salary of Each Department Without GROUP BY
Select distinct Department,Sum(Salary) over ( partition by Department) as Run_Tot_Depa from Employees1

--21 st question
--Calculate the Average Salary in Each Department Without GROUP BY
Select distinct Department,AVG(Salary) over ( partition by Department) as Aver_Sal from Employees1

--22 nd question
--Find the Difference Between an Employee’s Salary and Their Department’s Average
Select * from (Select EmployeeID,Name,Department,Salary,AVG(Salary) over ( partition by Department ) as Aver_Sal,
Salary-AVG(Salary) over ( partition by Department) as Differ  from Employees1) as Calculation

--23 rd question
--Calculate the Moving Average Salary Over 3 Employees (Including Current, Previous, and Next)
Select EmployeeID,Name,Department,Salary,Avg(Salary) over (order by (select Null) rows between 1 preceding and 1 following) as Aver_Moving from Employees1

--24 th question
--Find the Sum of Salaries for the Last 3 Hired Employees
select * from Employees1


With cte as (
Select *,DENSE_RANK() over (order by HireDate desc) as Last_3_Emp from Employees1
)
select Sum(Salary) as Sum_3_EMP from cte 
where Last_3_Emp<=3
