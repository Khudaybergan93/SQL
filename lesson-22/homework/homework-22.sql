create database lesso22
use lesso22
CREATE TABLE sales_data (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    customer_name VARCHAR(100),
    product_category VARCHAR(50),
    product_name VARCHAR(100),
    quantity_sold INT,
    unit_price DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    order_date DATE,
    region VARCHAR(50)
);

INSERT INTO sales_data VALUES
    (1, 101, 'Alice', 'Electronics', 'Laptop', 1, 1200.00, 1200.00, '2024-01-01', 'North'),
    (2, 102, 'Bob', 'Electronics', 'Phone', 2, 600.00, 1200.00, '2024-01-02', 'South'),
    (3, 103, 'Charlie', 'Clothing', 'T-Shirt', 5, 20.00, 100.00, '2024-01-03', 'East'),
    (4, 104, 'David', 'Furniture', 'Table', 1, 250.00, 250.00, '2024-01-04', 'West'),
    (5, 105, 'Eve', 'Electronics', 'Tablet', 1, 300.00, 300.00, '2024-01-05', 'North'),
    (6, 106, 'Frank', 'Clothing', 'Jacket', 2, 80.00, 160.00, '2024-01-06', 'South'),
    (7, 107, 'Grace', 'Electronics', 'Headphones', 3, 50.00, 150.00, '2024-01-07', 'East'),
    (8, 108, 'Hank', 'Furniture', 'Chair', 4, 75.00, 300.00, '2024-01-08', 'West'),
    (9, 109, 'Ivy', 'Clothing', 'Jeans', 1, 40.00, 40.00, '2024-01-09', 'North'),
    (10, 110, 'Jack', 'Electronics', 'Laptop', 2, 1200.00, 2400.00, '2024-01-10', 'South'),
    (11, 101, 'Alice', 'Electronics', 'Phone', 1, 600.00, 600.00, '2024-01-11', 'North'),
    (12, 102, 'Bob', 'Furniture', 'Sofa', 1, 500.00, 500.00, '2024-01-12', 'South'),
    (13, 103, 'Charlie', 'Electronics', 'Camera', 1, 400.00, 400.00, '2024-01-13', 'East'),
    (14, 104, 'David', 'Clothing', 'Sweater', 2, 60.00, 120.00, '2024-01-14', 'West'),
    (15, 105, 'Eve', 'Furniture', 'Bed', 1, 800.00, 800.00, '2024-01-15', 'North'),
    (16, 106, 'Frank', 'Electronics', 'Monitor', 1, 200.00, 200.00, '2024-01-16', 'South'),
    (17, 107, 'Grace', 'Clothing', 'Scarf', 3, 25.00, 75.00, '2024-01-17', 'East'),
    (18, 108, 'Hank', 'Furniture', 'Desk', 1, 350.00, 350.00, '2024-01-18', 'West'),
    (19, 109, 'Ivy', 'Electronics', 'Speaker', 2, 100.00, 200.00, '2024-01-19', 'North'),
    (20, 110, 'Jack', 'Clothing', 'Shoes', 1, 90.00, 90.00, '2024-01-20', 'South'),
    (21, 111, 'Kevin', 'Electronics', 'Mouse', 3, 25.00, 75.00, '2024-01-21', 'East'),
    (22, 112, 'Laura', 'Furniture', 'Couch', 1, 700.00, 700.00, '2024-01-22', 'West'),
    (23, 113, 'Mike', 'Clothing', 'Hat', 4, 15.00, 60.00, '2024-01-23', 'North'),
    (24, 114, 'Nancy', 'Electronics', 'Smartwatch', 1, 250.00, 250.00, '2024-01-24', 'South'),
    (25, 115, 'Oscar', 'Furniture', 'Wardrobe', 1, 1000.00, 1000.00, '2024-01-25', 'East')


--1 st question
--	Compute Running Total Sales per Customer
Select distinct customer_id,Sum(total_amount) over (order by customer_id) as Running_Total from sales_data

--2 nd question
--Count the Number of Orders per Product Category
with cte as (Select * from sales_data
)
Select distinct product_category, Count(Sale_id) over (partition by product_category) as Count_Category from cte order by Count_Category

--3 rd  question
--Find the Maximum Total Amount per Product Category
select distinct product_category,Max(total_amount) over (partition by product_category) as Max_Amount_Category from sales_data
--4 th question
--Find the Minimum Price of Products per Product Category
select distinct product_category,Min(total_amount) over (partition by product_category) as Min_Amount_Category from sales_data

--5 th question
--Compute the Moving Average of Sales of 3 days (prev day, curr day, next day)
select *,AVG(total_amount) over (order by order_date rows between 1 preceding and 1 following) as Moving_Average from sales_data 

--6 th question
--Find the Total Sales per Region
Select distinct region, Sum(total_amount) over (partition by region) as Region_Names from sales_data

--7 th question
--Compute the Rank of Customers Based on Their Total Purchase Amount

SELECT customer_id,customer_name, SUM(total_amount) AS total_purchase_amo,
    RANK() OVER (ORDER BY SUM(total_amount) DESC) AS purchase_rank
FROM  sales_data
GROUP BY customer_id, customer_name
ORDER BY purchase_rank;
--8 th question
--Calculate the Difference Between Current and Previous Sale Amount per Customer
Select sale_id,customer_id,customer_name,order_date,total_amount,Lag(total_amount) over (partition by customer_id order by order_date) as Prev_Sale,total_amount-Lag(total_amount)
over (partition by customer_id order by order_date) as Different from sales_data order by customer_id, order_date;

--9 th question
--Find the Top 3 Most Expensive Products in Each Category
Select * from(select sale_id,customer_id,customer_name,product_name,unit_price,product_category,
Rank() over (partition by product_category order by unit_price desc) as Rank_category from sales_data) as Ranl_by_Price
where Rank_category<=3 order by product_category, unit_price desc

----Might be also solved like that 
with cte as (
select *,Rank() over (partition by product_category order by unit_price desc) as Max_3_Products from sales_data
)
select sale_id,customer_id,customer_name, product_category,product_name,unit_price from cte
where Max_3_Products<=3 order by unit_price desc


--10 th question
--Compute the Cumulative Sum of Sales Per Region by Order Date

select * from (select sale_id,customer_id,customer_name,product_category,total_amount,order_date,region,Sum(total_amount) over
(partition by region order by order_date rows between unbounded preceding and current row) as Region_Sales from sales_data)
as Calculation_Region

--11 th question
--Compute Cumulative Revenue per Product Category
Select * from (select sale_id,customer_id,customer_name,total_amount,order_date,product_category,Sum(total_amount) over (partition by product_category order by order_date)
as Category_Sales from sales_data) as Sum_category

--12 nd  question 
--Here you need to find out the sum of previous values. Please go through the sample input and expected output.
--Sample Input

--| ID |
--|----|
--|  1 |
--|  2 |
--|  3 |
--|  4 |
--|  5 |
--Expected Output

--| ID | SumPreValues |
--|----|--------------|
--|  1 |            1 |
--|  2 |            3 |
--|  3 |            6 |
--|  4 |           10 |
--|  5 |           15 |

create table numbers (ID int)

insert into numbers values (1),(2),(3),(4),(5)


select *,sum(ID) over ( order by (select Null) rows between unbounded preceding and current row) as SumPreValues from numbers

--13 th question
--Sum of Previous Values to Current Value


CREATE TABLE OneColumn (
    Value SMALLINT
);
INSERT INTO OneColumn VALUES (10), (20), (30), (40), (100);
--Sample Input

--| Value |
--|-------|
--|    10 |
--|    20 |
--|    30 |
--|    40 |
--|   100 |
--Expected Output

--| Value | Sum of Previous |
--|-------|-----------------|
--|    10 |              10 |
--|    20 |              30 |
--|    30 |              50 |
--|    40 |              70 |
--|   100 |             140 |


select *,Sum(Value) over (order by (select Null) rows between 1 preceding and current row) as Sum_of_Previous from OneColumn


--14 th question
--Generate row numbers for the given data. The condition is that the first row number for 
--every partition should be odd number.For more details please check the sample input and expected output.

CREATE TABLE Row_Nums (
    Id INT,
    Vals VARCHAR(10)
);
INSERT INTO Row_Nums VALUES
(101,'a'), (102,'b'), (102,'c'), (103,'f'), (103,'e'), (103,'q'), (104,'r'), (105,'p');

--Sample Input

--| Id  | Vals |  
--|-----|------|  
--| 101 |    a |  
--| 102 |    b |  
--| 102 |    c |  
--| 103 |    f |  
--| 103 |    e |  
--| 103 |    q |  
--| 104 |    r |  
--| 105 |    p |
--Expected Output

--| Id  | Vals | RowNumber |
--|-----|------|-----------|
--| 101 | a    | 1         |
--| 102 | b    | 3         |
--| 102 | c    | 4         |
--| 103 | f    | 5         |
--| 103 | e    | 6         |
--| 103 | q    | 7         |
--| 104 | r    | 9         |
--| 105 | p    | 11        |

WITH Ordered AS (
  SELECT 
    Id,
    Vals,
    ROW_NUMBER() OVER (PARTITION BY Id ORDER BY Vals) AS rn,
    DENSE_RANK() OVER (ORDER BY Id) AS group_rank,
    COUNT(*) OVER (PARTITION BY Id) AS group_count
  FROM Row_Nums
),
StartPoints AS (
  SELECT 
    Id,
    SUM(group_count) OVER (ORDER BY group_rank 
        ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING) AS rows_before,
    group_rank
  FROM Ordered
  GROUP BY Id, group_rank, group_count
),
Final AS (
  SELECT 
    o.Id,
    o.Vals,
    (COALESCE(s.rows_before, 0) * 1) + 1 + (o.rn - 1) AS RowNumber
  FROM Ordered o
  JOIN StartPoints s ON o.Id = s.Id
)
SELECT Id, Vals, RowNumber
FROM Final
ORDER BY RowNumber;

--15 th question
--Find customers who have purchased items from more than one product_category
SELECT customer_id, customer_name
FROM sales_data
GROUP BY customer_id, customer_name
HAVING COUNT(DISTINCT product_category) > 1;
--16 th question
--Find Customers with Above-Average Spending in Their Region

With cte as (
select *,AVG(total_amount) over (partition by region) as Region_Average_Spending from sales_data
)
select * from cte
where total_amount>Region_Average_Spending
--group by customer_id,customer_name
--17 th question
--Rank customers based on their total spending (total_amount) within each region. If multiple customers have the same spending, they should receive the same rank (dense ranking).
select * from sales_data

Select * from (select *,Dense_Rank() over (partition by region order by total_amount desc) as Sum_Customer from sales_data) AS Region_Spending
order by region,total_amount desc
--18 th question
--Calculate the running total (cumulative_sales) of total_amount for each customer_id, ordered by order_date.
with cte as (
select *,Sum(total_amount)  over (partition by customer_id order by order_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as Running_Total from sales_data
)
select * from cte
--19 th question
--Calculate the sales growth rate (growth_rate) for each month compared to the previous month.
---The given data in only one month, not two, so it can not be calculated but following way is correct
WITH MonthlySales AS (
    SELECT 
        DATE_FORMAT(order_date, '2024-01%') AS sales_month,
        SUM(total_amount) AS total_sales
    FROM sales_data
    GROUP BY DATE_FORMAT(order_date, '2024-01%')
),
SalesWithGrowth AS (
    SELECT 
        sales_month,
        total_sales,
        LAG(total_sales) OVER (ORDER BY sales_month) AS previous_month_sales
    FROM MonthlySales
)
SELECT 
    sales_month,
    total_sales,
    previous_month_sales,
    ROUND(
        (total_sales - previous_month_sales) / previous_month_sales * 100, 2
    ) AS growth_rate
FROM SalesWithGrowth;
--20 th question
--Identify customers whose total_amount is higher than their last order''s total_amount.(Table sales_data)

With cte as (
select *,Lag(total_amount) over (partition by customer_id order by order_date) as Previous_Sale  from sales_data
)
select * from cte
where Previous_Sale>total_amount


--21 st question
---Identify Products that prices are above the average product price
Select * from (select sale_id,customer_id,customer_name,unit_price,AVG(unit_price) over 
( order by (select Null)) as Pro_Price from sales_data) as Product_Price
where unit_price>Pro_Price

--22 nd question
---In this puzzle you have to find the sum of val1 and val2 for each group and put that value at the beginning
--of the group in the new column. The challenge here is to do this in a single select.
--For more details please see the sample input and expected output.

CREATE TABLE MyData (
    Id INT, Grp INT, Val1 INT, Val2 INT
);
INSERT INTO MyData VALUES
(1,1,30,29), (2,1,19,0), (3,1,11,45), (4,2,0,0), (5,2,100,17);
--Sample Input

--| Id  | Grp | Val1 | Val2 |  
--|-----|-----|------|------|  
--|  1  |  1  |   30 |   29 |  
--|  2  |  1  |   19 |    0 |  
--|  3  |  1  |   11 |   45 |  
--|  4  |  2  |    0 |    0 |  
--|  5  |  2  |  100 |   17 |
--Expected Output

--| Id | Grp | Val1 | Val2 | Tot  |
--|----|-----|------|------|------|
--| 1  | 1   | 30   | 29   | 134  |
--| 2  | 1   | 19   | 0    | NULL |
--| 3  | 1   | 11   | 45   | NULL |
--| 4  | 2   | 0    | 0    | 117  |
--| 5  | 2   | 100  | 17   | NULL |

SELECT
    Id,
    Grp,
    Val1,
    Val2,
    CASE 
        WHEN ROW_NUMBER() OVER (PARTITION BY Grp ORDER BY Id) = 1
        THEN SUM(Val1 + Val2) OVER (PARTITION BY Grp)
        ELSE NULL
    END AS Tot
FROM MyData
ORDER BY Grp, Id;

--23 rd question 
--Here you have to sum up the value of the cost column based on the values of Id.
--For Quantity if values are different then we have to add those values.
---Please go through the sample input and expected output for details.
CREATE TABLE TheSumPuzzle (
    ID INT, Cost INT, Quantity INT
);
INSERT INTO TheSumPuzzle VALUES
(1234,12,164), (1234,13,164), (1235,100,130), (1235,100,135), (1236,12,136);
--Sample Input

--| Id   | Cost | Quantity |  
--|------|------|----------|  
--| 1234 |   12 |      164 |  
--| 1234 |   13 |      164 |  
--| 1235 |  100 |      130 |  
--| 1235 |  100 |      135 |  
--| 1236 |   12 |      136 | 
--Expected Output

--| Id   | Cost | Quantity |
--|------|------|----------|
--| 1234 | 25   | 164      |
--| 1235 | 200  | 265      |
--| 1236 | 12   | 136      |

SELECT
    ID,
    SUM(Cost) AS Cost,                   
    
    CASE 
        WHEN COUNT(DISTINCT Quantity) = 1 THEN MAX(Quantity)  
        ELSE SUM(Quantity)                           
    END AS Quantity
FROM TheSumPuzzle
GROUP BY ID;

--24 th question
--You have to write a query that will give us sum of tyze for each Z. Detailed logic is given below
--Return only 4 columns

--Level, TyZe, Result, Results(the last one is for explanation)
CREATE TABLE testSuXVI (
    Level TINYINT, TyZe TINYINT, Result CHAR(1)
);
INSERT INTO testSuXVI VALUES
(0, 1 ,'X'), (1, 5 ,'X'), (2, 2 ,'X'), (3, 2 ,'Z'), (1, 8 ,'X'), (2, 6 ,'Z'),
(1, 20 ,'X'), (2, 9 ,'X'), (3, 32 ,'X'), (4, 91 ,'Z'), (2, 21 ,'Z'), (3, 30 ,'Z');

--Expected Output

--| Level | TyZe | Result | Results |        Logic for Results  |  
--|-------|------|--------|---------|---------------------------|  
--|     0 |    1 |      X |       0 |                           |  
--|     1 |    5 |      X |       0 |                           |  
--|     2 |    2 |      X |       0 |                           |  
--|     3 |    2 |      Z |      10 |              10           |  (1+5+2+2)
--|     1 |    8 |      X |       0 |                           |  
--|     1 |    6 |      Z |      14 |              14           |  (8+6)
--|     1 |   20 |      X |       0 |                           |  
--|     2 |   9  |      X |       0 |                           |  
--|     3 |   32 |      X |       0 |                           |  
--|     4 |   91 |      Z |     152 |              152          |  (20+9+32+91)
--|     2 |   21 |      Z |      41 |              41           |  (21+20)
--|     3 |   30 |      Z |      59 |              59           |  (30+20+9)

select * from testSuXVI

WITH ResultsData AS (
    SELECT 
        Level,
        TyZe,
        Result,
        SUM(TyZe) OVER (PARTITION BY Result ORDER BY Level ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS Results,
        GROUP_CONCAT(TyZe ORDER BY Level SEPARATOR '+') AS Logic
    FROM testSuXVI
    WHERE Result = 'Z'
)

SELECT 
    t.Level,
    t.TyZe,
    t.Result,
    CASE 
        WHEN t.Result = 'Z' THEN rd.Results
        ELSE 0
    END AS Results,
    CASE 
        WHEN t.Result = 'Z' THEN CONCAT('(', rd.Logic, ')')
        ELSE ''
    END AS Logic
FROM testSuXVI t
LEFT JOIN ResultsData rd
    ON t.Level = rd.Level AND t.TyZe = rd.TyZe
ORDER BY t.Level;

--25 th question
--In this puzzle you need to generate row numbers for the given data. 
--The condition is that the first row number for every partition should be even number.
--For more details please check the sample input and expected output.

--Sample Input

--| Id  | Vals |
--|-----|------|
--| 101 | a    |
--| 102 | b    |
--| 102 | c    |
--| 103 | f    |
--| 103 | e    |
--| 103 | q    |
--| 104 | r    |
--| 105 | p    |
--Expected Output

--| Id  | Vals | Changed |
--|-----|------|---------|
--| 101 | a    | 2       |
--| 102 | b    | 4       |
--| 102 | c    | 5       |
--| 103 | e    | 7       |
--| 103 | f    | 8       |
--| 103 | q    | 9       |
--| 104 | r    | 11      |
--| 105 | p    | 13      |

WITH RowNumbered AS (
    SELECT 
        Id, 
        Vals, 
        ROW_NUMBER() OVER (PARTITION BY Id ORDER BY Vals) AS RowNum
    FROM Row_Nums
)
SELECT 
    Id,
    Vals,
    CASE 
        WHEN RowNum = 1 THEN 2  -- First row in each group gets 2
        ELSE RowNum + 1         -- Subsequent rows get the next number
    END AS Changed
FROM RowNumbered
ORDER BY Id, Vals;
