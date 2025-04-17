---Easy
--1 st question
--Define the following terms: data, database, relational database, and table.
--In SQL, data means values or information stored in the database. data can be Names of people or companies, numbers, date, time,
--files, text messages. Additionally, Data might be Null value also.

---2 nd question 
--List five key features of SQL Server.
--1. Data Management & Storage
--SQL Server stores data in relational tables and allows for fast and reliable access.
--Supports structured and semi-structured data (like JSON and XML).
--2. Advanced Security
--Offers features like:

--Authentication & Authorization

--Data Encryption

--Row-Level Security (restricts data access by user)

--Transparent Data Encryption (TDE)


--3 rd question
--What are the different authentication modes available when connecting to SQL Server? (Give at least 2)
--SQL Server supports two main authentication modes when connecting:
--Uses Active Directory credentials of the Windows user.

--No need to enter a separate username/password.

--More secure and recommended in enterprise environments.

--Uses built-in Windows security features (like Kerberos).

-- Centralized management, stronger security, no password stored in SQL Server.
---2. SQL Server Authentication
--Requires a username and password stored in SQL Server.

--Used when Windows Authentication isn’t available (e.g., non-domain environments).

--You manually create SQL logins in SQL Server.
--More flexible for external users or apps not in the same Windows domain.


--Medium
--4 th question
--Create a new database in SSMS named SchoolDB.
--we Open SSMS and connect to your SQL Server instance.

---In the Object Explorer, right-click on Databases.

--we Select "New Database..."

--In the Database name field, type: SchoolDB
--Click OK
--By doing above process we can create SchoolDB database.


--5 th question
--Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).
--Like following, we can create Students table with StudentID, Name, Age in SchoolDB database
--USE SchoolDB
--go
--CREATE TABLE Students (
   -- StudentID INT PRIMARY KEY,
    --Name VARCHAR(50),
    --Age INT );


--6 th question
--Describe the differences between SQL Server, SSMS, and SQL.
--the followings are main differences between SQL Server, SSMS, and SQL.
--1. SQL Server
---it is: A Relational Database Management System (RDBMS) developed by Microsoft.

--Purpose: Stores and manages databases, handles data processing, security, backups, and transactions.

--Think of it as: The engine that stores our data and runs queries behind the scenes.

--2. SSMS (SQL Server Management Studio)
-- it is: A GUI tool (Graphical User Interface) provided by Microsoft to interact with SQL Server.

--Purpose: Helps developers and DBAs write SQL queries, manage databases, monitor performance, and back up/restore data.

--Think of it as: The control panel or dashboard to manage SQL Server.

--3. SQL (Structured Query Language)
-- it is: A language used to interact with relational databases.

--Purpose: To create, read, update, and delete data (often referred to as CRUD operations).

--Think of it as: The language you speak to tell SQL Server what to do.


--Hard
--7 th question
--Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.
--DQL – Data Query Language and its main pupose is to retrieve data from a database and its main command is select, For istance, Select * from Students
--DML – Data Manipulation Language and its main commands are INSERT, UPDATE, DELETE. by using insert we can add data into tables, 
--by using Update we can refresh data which already existed with additions. by using delete, we can delete command we can erase data.
--INSERT INTO Students (StudentID, Name, Age)
--VALUES (1, 'Max', 33);

--UPDATE Students
--SET Age = 30
--WHERE StudentID = 1;

--DELETE FROM Students
--WHERE StudentID = 1;

--DDL – Data Definition Language and its main purpose is to define or modify database structures like tables and schemas.
--Main commands of DDL are CREATE, ALTER, DROP, TRUNCATE.
---by using create we can create tables. by using Alter we can add additional columns and by using drop we can delete data totally, 
--but by using truncate we can just delete data not the structure
--CREATE TABLE Courses (
    --CourseID INT PRIMARY KEY,
    --CourseName VARCHAR(100) );

---ALTER TABLE Students
--ADD Email VARCHAR(100);

--DROP TABLE Courses

---DCL – Data Control Language and its main commands are GRANT, REVOKE
--GRANT SELECT ON Students TO UserName

--REVOKE SELECT ON Students FROM UserName

---TCL – Transaction Control Language and its main purposes are to manage transactions and control changes made by DML commands. 
-- and its main commands are COMMIT, ROLLBACK, SAVEPOINT
---BEGIN TRANSACTION;

--UPDATE Students
--SET Age = 29
--WHERE StudentID = 5;

--COMMIT;

--ROLLBACK



--8 th question
--Write a query to insert three records into the Students table.
--create database SchoolDB
--use SchoolDB

--create table Students (StudentID INT PRIMARY KEY, Name VARCHAR(50), Age INT)

--Insert into Students values (6, 'John', 34),(7, 'Joshua', 21), (8, 'Vera', 23)


--9 th question
--Create a backup of your SchoolDB database and restore it. (write its steps to submit)

--Backup and Restore of SchoolDB – Steps
--Backup Steps:

--Open SSMS and connect to the server.

--Right-click SchoolDB → Tasks → Back Up.

--Select Full backup type and choose destination path.

--Click OK to create backup file (.bak).

--Restore Steps:

--Right-click on Databases → Restore Database.

--Select Device → Choose .bak file.

--Confirm restore settings (change name if needed).

--Click OK to restore the database.


