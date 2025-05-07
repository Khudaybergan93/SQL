create database homework20
use homework20

CREATE TABLE #Sales (
    SaleID INT PRIMARY KEY IDENTITY(1,1),
    CustomerName VARCHAR(100),
    Product VARCHAR(100),
    Quantity INT,
    Price DECIMAL(10,2),
    SaleDate DATE
);


INSERT INTO #Sales (CustomerName, Product, Quantity, Price, SaleDate) VALUES
('Alice', 'Laptop', 1, 1200.00, '2024-01-15'),
('Bob', 'Smartphone', 2, 800.00, '2024-02-10'),
('Charlie', 'Tablet', 1, 500.00, '2024-02-20'),
('David', 'Laptop', 1, 1300.00, '2024-03-05'),
('Eve', 'Smartphone', 3, 750.00, '2024-03-12'),
('Frank', 'Headphones', 2, 100.00, '2024-04-08'),
('Grace', 'Smartwatch', 1, 300.00, '2024-04-25'),
('Hannah', 'Tablet', 2, 480.00, '2024-05-05'),
('Isaac', 'Laptop', 1, 1250.00, '2024-05-15'),
('Jack', 'Smartphone', 1, 820.00, '2024-06-01');

--1 st question
--Find customers who purchased at least one item in March 2024 using EXISTS
Select * from #Sales where SaleDate>='2024-03-01' and SaleDate<='2024-03-31'
and exists (Select CustomerName,Sum(Quantity) as Quant_Count from #Sales group by CustomerName having Sum(Quantity)>=1)

--2 nd question
--2. Find the product with the highest total sales revenue using a subquery.
Select * from (Select top 1 Product,SUM(Price) as Sold_Revenue from #Sales group by Product order by Sold_Revenue desc) as R

--3 rd question
--3. Find the second highest sale amount using a subquery
SELECT MAX(TotalSaleAmount) AS SecondHighestSale
FROM (
    SELECT (Quantity * Price) AS TotalSaleAmount
    FROM #Sales
) AS SaleAmounts
WHERE TotalSaleAmount < (SELECT MAX(Quantity * Price) FROM #Sales)


--4 th question
--4. Find the total quantity of products sold per month using a subquery
Select *,DateName(MONTH, SaleDate) as Monthly_Sales from #Sales where exists  (Select DateName(MONTH, SaleDate),Product,Sum(Quantity) as Sum_Quantity from #Sales
group by DateName(MONTH, SaleDate),Product)

--5 th question
--5. Find customers who bought same products as another customer using EXISTS

Select CustomerName,Product,Count(distinct CustomerName) as Dist_Customers from #Sales 
where exists (Select CustomerName,Product from #Sales)
group by CustomerName,Product 

--6 th question
--6. Return how many fruits does each person have in individual fruit level


drop table if exists Fruits

create table Fruits(Name varchar(50), Fruit varchar(50))
insert into Fruits values ('Francesko', 'Apple'), ('Francesko', 'Apple'), ('Francesko', 'Apple'), ('Francesko', 'Orange'),
							('Francesko', 'Banana'), ('Francesko', 'Orange'), ('Li', 'Apple'), 
							('Li', 'Orange'), ('Li', 'Apple'), ('Li', 'Banana'), ('Mario', 'Apple'), ('Mario', 'Apple'), 
							('Mario', 'Apple'), ('Mario', 'Banana'), ('Mario', 'Banana'), 
							('Mario', 'Orange')

--+-----------+-------+--------+--------+
--| Name      | Apple | Orange | Banana |
--+-----------+-------+--------+--------+
--| Francesko |   3   |   2    |   1    |
--| Li        |   2   |   1    |   1    |
--| Mario     |   3   |   1    |   2    |
--+-----------+-------+--------+--------+

SELECT Name, [Apple], [Orange], [Banana]
FROM (
    SELECT Name, Fruit
    FROM Fruits
) AS SourceTable
PIVOT (
    COUNT(Fruit)
    FOR Fruit IN ([Apple], [Orange], [Banana])
) AS PivotTable;

--7 th question
--Return older people in the family with younger ones
create table Family(ParentId int, ChildID int)
insert into Family values (1, 2), (2, 3), (3, 4)
--1 Oldest person in the family --grandfather 2 Father 3 Son 4 Grandson

--Expected output
--+-----+-----+
--| PID |CHID |
--+-----+-----+
--|  1  |  2  |
--|  1  |  3  |
--|  1  |  4  |
--|  2  |  3  |
--|  2  |  4  |
--|  3  |  4  |
--+-----+-----+
WITH Ancestors AS (
    SELECT ParentId AS PID, ChildID AS CHID
    FROM Family
    UNION ALL
    SELECT A.PID, F.ChildID
    FROM Ancestors A
    JOIN Family F ON A.CHID = F.ParentId
)
SELECT *
FROM Ancestors
ORDER BY PID, CHID;

--8 th question
--Write an SQL statement given the following requirements. 
--For every customer that had a delivery to California, provide a result set of the customer orders that were delivered to Texas
CREATE TABLE #Orders
(
CustomerID     INTEGER,
OrderID        INTEGER,
DeliveryState  VARCHAR(100) NOT NULL,
Amount         MONEY NOT NULL,
PRIMARY KEY (CustomerID, OrderID)
);


INSERT INTO #Orders (CustomerID, OrderID, DeliveryState, Amount) VALUES
(1001,1,'CA',340),(1001,2,'TX',950),(1001,3,'TX',670),
(1001,4,'TX',860),(2002,5,'WA',320),(3003,6,'CA',650),
(3003,7,'CA',830),(4004,8,'TX',120);

SELECT *
FROM #Orders o
WHERE o.DeliveryState = 'TX'
  AND EXISTS (
      SELECT 1
      FROM #Orders o2
      WHERE o2.CustomerID = o.CustomerID
        AND o2.DeliveryState = 'CA'
  );
--9 th question
--Insert the names of residents if they are missing
create table #residents(resid int identity, fullname varchar(50), address varchar(100))

insert into #residents values 
('Dragan', 'city=Bratislava country=Slovakia name=Dragan age=45'),
('Diogo', 'city=Lisboa country=Portugal age=26'),
('Celine', 'city=Marseille country=France name=Celine age=21'),
('Theo', 'city=Milan country=Italy age=28'),
('Rajabboy', 'city=Tashkent country=Uzbekistan age=22')


UPDATE #residents
SET address = address + ' name=' + fullname
WHERE address NOT LIKE '%name=%';

Select * from #residents
--10 th question
--Write a query to return the route to reach from Tashkent to Khorezm.
--The result should include the cheapest and the most expensive routes
CREATE TABLE #Routes
(
RouteID        INTEGER NOT NULL,
DepartureCity  VARCHAR(30) NOT NULL,
ArrivalCity    VARCHAR(30) NOT NULL,
Cost           MONEY NOT NULL,
PRIMARY KEY (DepartureCity, ArrivalCity)
);

INSERT INTO #Routes (RouteID, DepartureCity, ArrivalCity, Cost) VALUES
(1,'Tashkent','Samarkand',100),
(2,'Samarkand','Bukhoro',200),
(3,'Bukhoro','Khorezm',300),
(4,'Samarkand','Khorezm',400),
(5,'Tashkent','Jizzakh',100),
(6,'Jizzakh','Samarkand',50);



--Expected Output

--|             Route                                 |Cost |
--|Tashkent - Samarkand - Khorezm                     | 500 |
--|Tashkent - Jizzakh - Samarkand - Bukhoro - Khorezm | 650 |


WITH RoutePaths AS (
    SELECT 
        RouteID,
        DepartureCity,
        ArrivalCity,
        CAST(DepartureCity + ' -> ' + ArrivalCity AS VARCHAR(MAX)) AS Path,
        Cost
    FROM #Routes
    WHERE DepartureCity = 'Tashkent'

    UNION ALL

    SELECT 
        r.RouteID,
        rp.DepartureCity,
        r.ArrivalCity,
        CAST(rp.Path + ' -> ' + r.ArrivalCity AS VARCHAR(MAX)),
        rp.Cost + r.Cost
    FROM RoutePaths rp
    JOIN #Routes r ON rp.ArrivalCity = r.DepartureCity
    WHERE rp.Path NOT LIKE '%'+r.ArrivalCity+'%'
)
SELECT TOP 1 *
FROM RoutePaths
WHERE ArrivalCity = 'Khorezm'
ORDER BY Cost ASC;


-- Most expensive route
WITH RoutePaths AS (
    SELECT 
        RouteID,
        DepartureCity,
        ArrivalCity,
        CAST(DepartureCity + ' -> ' + ArrivalCity AS VARCHAR(MAX)) AS Path,
        Cost
    FROM #Routes
    WHERE DepartureCity = 'Tashkent'

    UNION ALL

    SELECT 
        r.RouteID,
        rp.DepartureCity,
        r.ArrivalCity,
        CAST(rp.Path + ' -> ' + r.ArrivalCity AS VARCHAR(MAX)),
        rp.Cost + r.Cost
    FROM RoutePaths rp
    JOIN #Routes r ON rp.ArrivalCity = r.DepartureCity
    WHERE rp.Path NOT LIKE '%'+r.ArrivalCity+'%'
)
SELECT TOP 1 *
FROM RoutePaths
WHERE ArrivalCity = 'Khorezm'
ORDER BY Cost DESC;



---11 th question
--Rank products based on their order of insertion.
CREATE TABLE #RankingPuzzle
(
     ID INT
    ,Vals VARCHAR(10)
)

 
INSERT INTO #RankingPuzzle VALUES
(1,'Product'),
(2,'a'),
(3,'a'),
(4,'a'),
(5,'a'),
(6,'Product'),
(7,'b'),
(8,'b'),
(9,'Product'),
(10,'c')


Select *, Rank() over (order by ID) as Ranking From #RankingPuzzle
--12 th question
--Question 12
--Find employees whose sales were higher than the average sales in their department

CREATE TABLE #EmployeeSales (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    SalesAmount DECIMAL(10,2),
    SalesMonth INT,
    SalesYear INT
);

INSERT INTO #EmployeeSales (EmployeeName, Department, SalesAmount, SalesMonth, SalesYear) VALUES
('Alice', 'Electronics', 5000, 1, 2024),
('Bob', 'Electronics', 7000, 1, 2024),
('Charlie', 'Furniture', 3000, 1, 2024),
('David', 'Furniture', 4500, 1, 2024),
('Eve', 'Clothing', 6000, 1, 2024),
('Frank', 'Electronics', 8000, 2, 2024),
('Grace', 'Furniture', 3200, 2, 2024),
('Hannah', 'Clothing', 7200, 2, 2024),
('Isaac', 'Electronics', 9100, 3, 2024),
('Jack', 'Furniture', 5300, 3, 2024),
('Kevin', 'Clothing', 6800, 3, 2024),
('Laura', 'Electronics', 6500, 4, 2024),
('Mia', 'Furniture', 4000, 4, 2024),
('Nathan', 'Clothing', 7800, 4, 2024);

Select * from #EmployeeSales as Outs 
where SalesAmount>(Select Avg(SalesAmount) from #EmployeeSales as Ins where Outs.Department=Ins.Department)

--13 th question
--Find employees who had the highest sales in any given month using EXISTS
Select  EmployeeName,SalesMonth,Max(SalesAmount) as Sum_Sale from #EmployeeSales where exists (Select EmployeeName,SalesMonth from #EmployeeSales)
group by EmployeeName,SalesMonth 

--14 th question
--Find employees who made sales in every month using NOT EXISTS
select EmployeeID,EmployeeName,SalesMonth from #EmployeeSales
where not exists (Select * from #EmployeeSales)

--new tables required for further questions
drop table if exists Products
CREATE TABLE Products (
    ProductID   INT PRIMARY KEY,
    Name        VARCHAR(50),
    Category    VARCHAR(50),
    Price       DECIMAL(10,2),
    Stock       INT
);

INSERT INTO Products (ProductID, Name, Category, Price, Stock) VALUES
(1, 'Laptop', 'Electronics', 1200.00, 15),
(2, 'Smartphone', 'Electronics', 800.00, 30),
(3, 'Tablet', 'Electronics', 500.00, 25),
(4, 'Headphones', 'Accessories', 150.00, 50),
(5, 'Keyboard', 'Accessories', 100.00, 40),
(6, 'Monitor', 'Electronics', 300.00, 20),
(7, 'Mouse', 'Accessories', 50.00, 60),
(8, 'Chair', 'Furniture', 200.00, 10),
(9, 'Desk', 'Furniture', 400.00, 5),
(10, 'Printer', 'Office Supplies', 250.00, 12),
(11, 'Scanner', 'Office Supplies', 180.00, 8),
(12, 'Notebook', 'Stationery', 10.00, 100),
(13, 'Pen', 'Stationery', 2.00, 500),
(14, 'Backpack', 'Accessories', 80.00, 30),
(15, 'Lamp', 'Furniture', 60.00, 25);


--15 th question
--Retrieve the names of products that are more expensive than the average price of all products.
Select * from Products 
where Price>(Select AVG(Price) as Average_Price from Products )

--16 th question
--16. Find the products that have a stock count lower than the highest stock count.
Select * from Products 
where Stock<(Select Max(Stock) as Max_Stock from Products)

--17 th question
--17. Get the names of products that belong to the same category as 'Laptop'.
SELECT Name
FROM Products
WHERE Category = (SELECT Category FROM Products WHERE Name = 'Laptop');
--18 th question
--18. Retrieve products whose price is greater than the lowest price in the Electronics category.
Select Name,Price from Products
where Price>(Select Min(Price) as Min_Price from Products where Category='Electronics')

--19 th question
--19. Find the products that have a higher price than the average price of their respective category.
Select * from Products as Outs
where Price>(Select AVG(Price) as Average_Price from Products as Ins where Outs.Category=Ins.Category)


--Additional tables to use
drop table if exists Orders
CREATE TABLE Orders (
    OrderID    INT PRIMARY KEY,
    ProductID  INT,
    Quantity   INT,
    OrderDate  DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Orders (OrderID, ProductID, Quantity, OrderDate) VALUES
(1, 1, 2, '2024-03-01'),
(2, 3, 5, '2024-03-05'),
(3, 2, 3, '2024-03-07'),
(4, 5, 4, '2024-03-10'),
(5, 8, 1, '2024-03-12'),
(6, 10, 2, '2024-03-15'),
(7, 12, 10, '2024-03-18'),
(8, 7, 6, '2024-03-20'),
(9, 6, 2, '2024-03-22'),
(10, 4, 3, '2024-03-25'),
(11, 9, 2, '2024-03-28'),
(12, 11, 1, '2024-03-30'),
(13, 14, 4, '2024-04-02'),
(14, 15, 5, '2024-04-05'),
(15, 13, 20, '2024-04-08');





--20 th question
--Find the products that have been ordered at least once.
Select ProductID,Count(OrderID) as Count_Order from Orders
where  exists (select * from Orders)
group by ProductID
Having Count(OrderID)>=1


--21 st question
--21. Retrieve the names of products that have been ordered more than the average quantity ordered.

SELECT ProductID
FROM Orders
GROUP BY ProductID
HAVING SUM(Quantity) > (
    SELECT AVG(TotalQuantity)
    FROM (
        SELECT SUM(Quantity) AS TotalQuantity
        FROM Orders
        GROUP BY ProductID
    ) AS ProductTotals
);

--22 nd question
--22. Find the products that have never been ordered.

Select O1.ProductID,Count(O1.OrderID) as Count_Order from Orders as O1
join Orders as O2 on O1.OrderID=O2.OrderID  
group by O1.ProductID having Count(O1.OrderID) is null
--23 rd question
--23. Retrieve the product with the highest total quantity ordered
Select top 1 ProductID,Max(Quantity) as Max_Quantity from Orders where exists (Select * from Orders)
group by ProductID order by Max_Quantity desc