create database homework2
use homework2
---1 st question 
---Create a table Employees with columns: EmpID INT, Name (VARCHAR(50)), and Salary (DECIMAL(10,2)).

create table Employees (EmpID INT,  Name VARCHAR(50), Salary DECIMAL (10,2))

--2 nd question
--Insert three records into the Employees table using different INSERT INTO approaches (single-row insert and multiple-row insert).
---At first I do it in single-row insert way
Insert into Employees values (1, 'Julia', 4500) 
Insert into Employees values (2, 'Denzel', 6000)
Insert into Employees values (3,  'Robert', 5600)

---Now, I do it in multiple-row insert way.
Insert into Employees values (4, 'Max', 7100), (5, 'Jax', 6900), (6, 'Yura', 6500)


---3 rd question 
--Update the Salary of an employee where EmpID = 1.
Update Employees
set Salary=5300
where EmpID = 1

select * from Employees


--4 th question
--Delete a record from the Employees table where EmpID = 2.
delete from Employees
where EmpID = 2

--5 th question
--Demonstrate the difference between DELETE, TRUNCATE, and DROP commands on a test table.
create table Test_Table (Id int, Name Varchar(30))
insert into Test_Table values (1, 'Jordan'), (2, 'Rachel'), (3, 'Max'), (4, 'Mustafa')

delete from Test_Table 
where Id=1
--with delete we can only remove data belonging to Id=1, while other data and entire structure remain
truncate table Test_Table
--If we do it with truncate, it removes all data but keeps the structure
drop table Test_Table
--If we do it with drop table, it removes all data, rows, column and the structure also

--6 th question
--Modify the Name column in the Employees table to VARCHAR(100).
ALTER TABLE Employees
ALTER COLUMN name VARCHAR(100)

--7 th question
--Add a new column Department (VARCHAR(50)) to the Employees table.
Alter table Employees
add Department VARCHAR(50)

--8 th question
--Change the data type of the Salary column to FLOAT.
ALTER TABLE Employees
ALTER COLUMN Salary Float

--9 th question
--Create another table Departments with columns DepartmentID (INT, PRIMARY KEY) and DepartmentName (VARCHAR(50)).
create table Departments (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50))

--10 th question
--Remove all records from the Employees table without deleting its structure.
truncate table Employees

--Intermediate-Level Tasks (6)
---11 th question
--Insert five records into the Departments table using INSERT INTO SELECT from an existing table.
Insert into Departments values (1, 'HR'),(2, 'Marketing'), (3, 'Sale'), (4, 'Transactions'), (5, 'International Affairs')

--12 th question
--Update the Department of all employees where Salary > 5000 to 'Management'.
UPDATE Departments
SET DepartmentName = 'Management'
WHERE Salary > 5000;

--13 rd question 
--Write a query that removes all employees but keeps the table structure intact.
create table Employees1 (EmpID INT,  Name VARCHAR(50), Department varchar(30), Salary DECIMAL (10,2))
Insert into Employees1 values (1, 'Julia', 'HR', 4500) 
Insert into Employees1 values (2, 'Denzel', 'Marketing', 6000)
Insert into Employees1 values (3, 'Robert', 'IT', 5600)

ALTER TABLE Employees1
DROP COLUMN Name

--14 th question
--Drop the Department column from the Employees table.
ALTER TABLE Employees1
DROP COLUMN Department

--15 th question
--Rename the Employees table to StaffMembers using SQL commands.
EXEC sp_rename 'Employees1', 'StaffMembers'

--16 th question 
--Write a query to completely remove the Departments table from the database.
drop table Departments


--Advanced-Level Tasks (9)
--17 th question
--Create a table named Products with at least 5 columns, including: ProductID (Primary Key), ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)
create table Products (ProductID Int Primary Key,ProductName VARCHAR(60), Category VARCHAR(30), Price DECIMAL (10,2), OrderID int)

--18 th question
--Add a CHECK constraint to ensure Price is always greater than 0.
ALTER TABLE Products
ADD CONSTRAINT check_price
CHECK (Price > 0)

--19 th question
--Modify the table to add a StockQuantity column with a DEFAULT value of 50.
Alter table Products
add StockQuantity int default (50)

--20 th question
--Rename Category to ProductCategory
EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN'

--21 st question
--Insert 5 records into the Products table using standard INSERT INTO queries.
Insert into Products values (1, 'TV', 'Technology', 500, 3, 60), 
(2, 'Smartphone', 'Technology', 800, 4, 70),
(3, 'Dishwasher', 'Home Device', 450, 7, 78),
(4, 'Pen', 'School', 760, 9, 57), 
(5, 'Ball', 'School', 570, 12, 87)

--22 nd question
--Use SELECT INTO to create a backup table called Products_Backup containing all Products data.
SELECT * INTO Products_Backup
FROM Products

--23 rd question
--Rename the Products table to Inventory.
Exec sp_rename 'Products', 'Inventory'

--24 th question
--Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.
ALTER TABLE Inventory
ALTER COLUMN Price FLOAT

--25 th question
--Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5.
Alter table Inventory
add ProductCode int IDENTITY (1000, 5)

