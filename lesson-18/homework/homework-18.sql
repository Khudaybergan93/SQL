create database homework18
use homework18

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT,
    SaleDate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Products (ProductID, ProductName, Category, Price)
VALUES
(1, 'Samsung Galaxy S23', 'Electronics', 899.99),
(2, 'Apple iPhone 14', 'Electronics', 999.99),
(3, 'Sony WH-1000XM5 Headphones', 'Electronics', 349.99),
(4, 'Dell XPS 13 Laptop', 'Electronics', 1249.99),
(5, 'Organic Eggs (12 pack)', 'Groceries', 3.49),
(6, 'Whole Milk (1 gallon)', 'Groceries', 2.99),
(7, 'Alpen Cereal (500g)', 'Groceries', 4.75),
(8, 'Extra Virgin Olive Oil (1L)', 'Groceries', 8.99),
(9, 'Mens Cotton T-Shirt', 'Clothing', 12.99),
(10, 'Womens Jeans - Blue', 'Clothing', 39.99),
(11, 'Unisex Hoodie - Grey', 'Clothing', 29.99),
(12, 'Running Shoes - Black', 'Clothing', 59.95),
(13, 'Ceramic Dinner Plate Set (6 pcs)', 'Home & Kitchen', 24.99),
(14, 'Electric Kettle - 1.7L', 'Home & Kitchen', 34.90),
(15, 'Non-stick Frying Pan - 28cm', 'Home & Kitchen', 18.50),
(16, 'Atomic Habits - James Clear', 'Books', 15.20),
(17, 'Deep Work - Cal Newport', 'Books', 14.35),
(18, 'Rich Dad Poor Dad - Robert Kiyosaki', 'Books', 11.99),
(19, 'LEGO City Police Set', 'Toys', 49.99),
(20, 'Rubiks Cube 3x3', 'Toys', 7.99);

INSERT INTO Sales (SaleID, ProductID, Quantity, SaleDate)
VALUES
(1, 1, 2, '2025-04-01'),
(2, 1, 1, '2025-04-05'),
(3, 2, 1, '2025-04-10'),
(4, 2, 2, '2025-04-15'),
(5, 3, 3, '2025-04-18'),
(6, 3, 1, '2025-04-20'),
(7, 4, 2, '2025-04-21'),
(8, 5, 10, '2025-04-22'),
(9, 6, 5, '2025-04-01'),
(10, 6, 3, '2025-04-11'),
(11, 10, 2, '2025-04-08'),
(12, 12, 1, '2025-04-12'),
(13, 12, 3, '2025-04-14'),
(14, 19, 2, '2025-04-05'),
(15, 20, 4, '2025-04-19'),
(16, 1, 1, '2025-03-15'),
(17, 2, 1, '2025-03-10'),
(18, 5, 5, '2025-02-20'),
(19, 6, 6, '2025-01-18'),
(20, 10, 1, '2024-12-25'),
(21, 1, 1, '2024-04-20');

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT FOREIGN KEY REFERENCES Customers(customer_id),
    order_date DATE,
    amount DECIMAL(10,2)
);

-- Customers
INSERT INTO Customers (customer_id, name, city)
VALUES
(1, 'Alice Smith', 'New York'),
(2, 'Bob Jones', 'Chicago'),
(3, 'Carol White', 'Los Angeles');

-- Orders
INSERT INTO Orders (order_id, customer_id, order_date, amount)
VALUES
(101, 1, '2024-12-10', 120.00),
(102, 1, '2024-12-20', 200.00),
(103, 1, '2024-12-30', 220.00),
(104, 2, '2025-01-12', 120.00),
(105, 2, '2025-01-20', 180.00);

CREATE TABLE Gaps
(
RowNumber   INTEGER PRIMARY KEY,
TestCase    VARCHAR(100) NULL
);

INSERT INTO Gaps (RowNumber, TestCase) VALUES
(1,'Alpha'),(2,NULL),(3,NULL),(4,NULL),
(5,'Bravo'),(6,NULL),(7,'Charlie'),(8,NULL),(9,NULL);


--1 st question
--Create a temporary table named MonthlySales to store the total quantity sold and total revenue for each product in the current month.
--Return: ProductID, TotalQuantity, TotalRevenue
select * into #MonthlySales from [homework18].[dbo].[Sales]

select ProductID,Sum(Quantity) as TotalQuantity from #MonthlySales
where SaleDate>'2025-04-01' and SaleDate<'2025-05-01'
group by ProductID
--2 nd question
--2. Create a view named vw_ProductSalesSummary that returns product info along with total sales quantity across all time.
--Return: ProductID, ProductName, Category, TotalQuantitySold
create view vw_ProductSalesSummary
as 

select P.ProductID,P.ProductName,P.Category,S.Quantity,S.SaleDate from Products as P join Sales as S 
 on P.ProductID=S.ProductID

 select ProductID,ProductName,Category,Sum(Quantity) as TotalQuantitySold from vw_ProductSalesSummary
 group by ProductID,ProductName,Category
--3 rd question
--3. Create a function named fn_GetTotalRevenueForProduct(@ProductID INT)
--Return: total revenue for the given product ID
Alter function udf_fn_GetTotalRevenueForProduct (@ProductID INT)
Returns float (18,2)
As 
begin
return @TotalRevenue float (18, 2)
end

 SELECT @TotalRevenue = SUM(P.Price * S.Quantity)
    FROM Sales S
    JOIN Products P ON S.ProductID = P.ProductID
    WHERE S.ProductID = @ProductID;

    RETURN ISNULL(@TotalRevenue, 0);
END;

select * from Sales
select * from Products

drop function udf_fn_GetTotalRevenueForProduct

create FUNCTION udf_fn_GetTotalRevenueForProduct (@ProductID INT)
RETURNS DECIMAL(18, 2)
AS
BEGIN
    DECLARE @TotalRevenue DECIMAL(18, 2);

    SELECT @TotalRevenue = SUM(P.Price * S.Quantity)
    FROM Sales S
    INNER JOIN Products P ON S.ProductID = P.ProductID
    WHERE S.ProductID = @ProductID;

    RETURN ISNULL(@TotalRevenue, 0);
END;

select dbo.udf_fn_GetTotalRevenueForProduct(4) as TotalRevenue
--4 th question
--4. Create an function fn_GetSalesByCategory(@Category VARCHAR(50))
--Return: ProductName, TotalQuantity, TotalRevenue for all products in that category.
select * from Sales
select * from Products

create function udf_fn_GetSalesByCategory (@Category VARCHAR(50))
returns table 
as 
return (select * from Products where Category=@Category)

select ProductName,Quantity,Category,sum(Price) as TotalRevenue from dbo.udf_fn_GetSalesByCategory('clothing') as Gate join  [homework18].[dbo].[Sales] as S on Gate.ProductID=S.ProductID
group by ProductName,Quantity,Category
--Now we will move on with 2 Lateral-thinking puzzles (5 and 6th puzzles). 
--Lateral-thinking puzzles are the ones that can’t be solved by straightforward logic — you have to think outside the box. 


--5 th question
--You have to create a function that get one argument as input from user and the function should return 
--'Yes' if the input number is a prime number and 'No' otherwise. You can start it like this:
CREATE FUNCTION fn_IsPrime (@Number INT)
RETURNS VARCHAR(3)
AS
BEGIN
    DECLARE @i INT = 2;
    DECLARE @IsPrime BIT = 1;
    DECLARE @Max INT;

   
    IF @Number < 2
        RETURN 'No';

   
    SET @Max = FLOOR(SQRT(CONVERT(FLOAT, @Number)));

   
    WHILE @i <= @Max
    BEGIN
        IF @Number % @i = 0
            RETURN 'No';
        SET @i = @i + 1;
    END

    RETURN 'Yes';
END;

 select dbo.fn_IsPrime(23)
  




--6 th question
--Create a table-valued function named fn_GetNumbersBetween that accepts two integers as input:
CREATE FUNCTION fn_GetNumbersBetween (
    @Start INT,
    @End INT
)
RETURNS @Result TABLE (
    Number INT
)
AS
BEGIN
    DECLARE @Current INT = @Start;

    WHILE @Current <= @End
    BEGIN
        INSERT INTO @Result (Number)
        VALUES (@Current);

        SET @Current = @Current + 1;
    END

    RETURN;
END;


SELECT * FROM dbo.fn_GetNumbersBetween(5, 10);
--7 th question
--Write a SQL query to return the Nth highest distinct salary from the Employee table. 
--If there are fewer than N distinct salaries, return NULL.
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    EmployeeName VARCHAR(100)
);

INSERT INTO Employee (EmployeeID, DepartmentID, Salary, EmployeeName) VALUES
(1, 1, 55000.00, 'John Doe'),
(2, 2, 60000.00, 'Jane Smith'),
(3, 1, 45000.00, 'James Brown'),
(4, 3, 70000.00, 'Mary Johnson'),
(5, 2, 75000.00, 'Linda Williams'),
(6, 3, 80000.00, 'Michael Jones'),
(7, 1, 65000.00, 'Robert Miller'),
(8, 4, 58000.00, 'Patricia Davis'),
(9, 5, 68000.00, 'William Martínez'),
(10, 4, 52000.00, 'Jennifer García'),
(11, 3, 54000.00, 'David Lopez'),
(12, 2, 63000.00, 'Helen Harris'),
(13, 1, 46000.00, 'Charles Taylor'),
(14, 5, 55000.00, 'Nancy Allen'),
(15, 4, 60000.00, 'Edward Clark'),
(16, 1, 50000.00, 'Sarah Lewis'),
(17, 2, 70000.00, 'Jessica Young'),
(18, 3, 76000.00, 'Kevin White'),
(19, 4, 67000.00, 'Laura King'),
(20, 5, 59000.00, 'Joseph Scott'),
(21, 1, 61000.00, 'Karen Adams'),
(22, 3, 54000.00, 'James Nelson'),
(23, 2, 58000.00, 'Christopher Perez'),
(24, 1, 65000.00, 'Matthew Hill'),
(25, 3, 49000.00, 'Rachel Jackson'),
(26, 5, 64000.00, 'Daniel Walker'),
(27, 4, 57000.00, 'Ashley Young'),
(28, 1, 60000.00, 'Helen Anderson'),
(29, 2, 63000.00, 'Brian Wright'),
(30, 5, 52000.00, 'Michael Green'),
(31, 1, 67000.00, 'Jessica Hall'),
(32, 4, 55000.00, 'Joshua Carter'),
(33, 2, 72000.00, 'Sarah Mitchell'),
(34, 3, 46000.00, 'George Perez'),
(35, 5, 50000.00, 'Rachel Collins'),
(36, 1, 54000.00, 'John Rivera'),
(37, 4, 56000.00, 'Orlando Robinson'),
(38, 3, 65000.00, 'Luis Davis'),
(39, 2, 68000.00, 'Barbara Moore'),
(40, 1, 71000.00, 'David Harris');


DECLARE @N INT = 3;

SELECT Salary
FROM (
    SELECT DISTINCT Salary
    FROM Employee
) AS DistinctSalaries
ORDER BY Salary DESC
OFFSET (@N - 1) ROWS
FETCH NEXT 1 ROWS ONLY;

--8 th question
--Write a SQL query to find the person who has the most friends.
--Return: Their id, The total number of friends they have
CREATE TABLE Friendships (
    requester_id INT,
    accepter_id INT,
    accept_date DATE
);
INSERT INTO Friendships (requester_id, accepter_id, accept_date)
VALUES 
(1, 2, '2016-06-03'),
(1, 3, '2016-06-08'),
(2, 3, '2016-06-08'),
(3, 4, '2016-06-09');

SELECT TOP 1 id, COUNT(*) AS num
FROM (
    SELECT requester_id AS id FROM Friendships
    UNION ALL
    SELECT accepter_id AS id FROM Friendships
) AS AllFriends
GROUP BY id
ORDER BY num DESC;

--9 th question
--Create a View for Customer Order Summary.
--Create a view called vw_CustomerOrderSummary that returns a summary of customer orders. The view must contain the following columns:

--Column Name | Description
--customer_id | Unique identifier of the customer
--name | Full name of the customer
--total_orders | Total number of orders placed by the customer
--total_amount | Cumulative amount spent across all orders
--last_order_date | Date of the most recent order placed by the customer
CREATE VIEW vw_CustomerOrderSummary AS
SELECT
    c.customer_id,
    c.name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.amount) AS total_amount,
    MAX(o.order_date) AS last_order_date
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

SELECT * FROM vw_CustomerOrderSummary;
--10 th question
--Write an SQL statement to fill in the missing gaps. You have to write only select statement, no need to modify the table.
CREATE TABLE WorkflowSteps (
    RowNumber INT PRIMARY KEY,
    Workflow VARCHAR(50)
);

INSERT INTO WorkflowSteps (RowNumber, Workflow)
VALUES
(1, 'Alpha'),
(2, NULL),
(3, NULL),
(4, NULL),
(5, 'Bravo'),
(6, NULL),
(7, NULL),
(8, NULL),
(9, NULL),
(10, 'Charlie'),
(11, NULL),
(12, NULL);

select * from WorkflowSteps

--| RowNumber | Workflow |
--|----------------------|
--| 1         | Alpha    |
--| 2         |          |
--| 3         |          |
--| 4         |          |
--| 5         | Bravo    |
--| 6         |          |
--| 7         |          |
--| 8         |          |
--| 9         |          |
--| 10        | Charlie  |
--| 11        |          |
--| 12        |          |
--Here is the expected output.

--| RowNumber | Workflow |
--|----------------------|
--| 1         | Alpha    |
--| 2         | Alpha    |
--| 3         | Alpha    |
--| 4         | Alpha    |
--| 5         | Bravo    |
--| 6         | Bravo    |
--| 7         | Bravo    |
--| 8         | Bravo    |
--| 9         | Bravo    |
--| 10        | Charlie  |
--| 11        | Charlie  |
--| 12        | Charlie  |

WITH Filled AS (
  SELECT 
    RowNumber,
    Workflow,
    MAX(Workflow) OVER (
      ORDER BY RowNumber
      ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS FilledWorkflow
  FROM WorkflowSteps
)
SELECT RowNumber, FilledWorkflow AS Workflow
FROM Filled;