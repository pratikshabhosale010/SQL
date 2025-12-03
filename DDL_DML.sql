-- Select a Database 
USE [SQLDB]

-- Create a Database 
Create Database SQLDB

-- Delete database 
Drop Database SQLDB

-- Create Table 
Create Table Employee
(
E_Id int primary key,
E_name varchar(20),
Salary Float
)

-- Adding a single column 
Alter table Employee Add Gender char(1)
-- Adding multiple columns 
Alter Table Employee Add E_Address varchar(20), Dept_id int
-- Changing Data type of a column 
Alter Table Employee Alter column Gender varchar(2)
-- Deleting a column 
Alter Table Employee Drop Column Gender

-- Deleteing a Table 
Drop Table Employee

-- Deleting whole data from table 
Truncate Table Employee

-- Rename a column 
Execute SP_RENAME 'Employee.Address','New_Address','COLUMN'
-- Rename a Table 
EXEC SP_RENAME 'Employee','EMP'
-- Rename a Database 
EXEC SP_RENAMEDB 'SQLDB','MYDB'

Select * from EMPLOYEE

-- Insert data to a table 
Insert into Employee (E_Id,E_name,salary) values (100,'Rahul sharma',20000)
Insert into Employee (E_Id,E_name,salary) values (101,'Vipul sharma',22000)

Insert into Employee (E_Id,E_name,salary) values (101,'Rahul sharma',20000), (102,'Vikash',30000)
Insert into Employee values (101,'Rahul sharma',NULL)
Insert into Employee (E_Id,salary,E_name) values (101,20000,'Rahul sharma')
Insert into Employee (E_Id,salary,E_name) values (101,NULL,'Rahul sharma')
Insert into Employee (E_Id) values (101)

-- Updating whole column data 
Update Employee set Salary = 2000
-- Updating column for specific records 
Update Employee Set salary = 35000 where E_name = 'Vikash' 
-- Updating multiple columns 
Update Employee Set E_Name = 'ABC', salary = 3000 where E_id = 101

-- Delete whole table data 
Delete From Employee
-- Delete specific records 
Delete from Employee where E_id = 101 

-- Retrieve all rows & all columns from Table 
Select * From Employee
-- Select Spefic records 
Select * from Employee where E_id = 101 
-- Select Spefic Columns 
Select E_id, E_Name from Employee where E_id = 101 
-- Select top records
Select top 2 * from Employee


DROP - remove DBO , DBO , structure + data , cant use where , cant rollback , faster 

Truncate - remove whole table data , Table , whole data , cant use where , cant rollback, intermidate

Delete - delete particular data from a table , Table , particular data , can use where clause, Rollback data  
slower 




















