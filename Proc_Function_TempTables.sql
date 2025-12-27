
-- Temp table - same as table but used for temp purpose 
-- local temp table -- valid for session 
-- Global temp table -- for connection 

create Table #Employee
(
id int,
name varchar(20)
)

select * from #Employee

create Table ##Employee
(
id int,
name varchar(20)
)

select * from ##Employee

-- Table variable 
-- scope - within the batch 
Declare @Employee Table
(
id int primary key,
name char(20)
)

select * from @Employee


-- CTE (common Table Expression)
-- Recursive uses 
-- faster than temp as well table variables 
-- stored in memory

WITH EMP AS
(
select E_ID,E_Name,Salary,Dense_Rank() over (order by salary asc) rnk
from Employee
)
select * from EMP where rnk = 2


;WITH <CTE_NM> (col_list) AS 
(
<select Query>
)
Select * from <CTE_NM> 

-- system defined 
-- user defined - SP with no parameters, sp with input parameters, sp with output parameters

CREATE PROCEDURE <Proc name>
AS 
BEGIN 
-- Declaration 
-- Executable 
-- Print results 
END 



-- Declaring Variables 
Declare @Test varchar(20)  
-- Assignment 
SET @Test = 'Bangalore'
-- printing result 
Select @Test

Alter Table Employee ADD FirstName varchar(100) , LastName varchar(100)
update EMPLOYEE set FirstName ='ABC' , LastName = 'XYZ'

-- SP with no paramters 
-- deletes permanently
Drop PROCEDURE GetEMP
-- create
Create PROCEDURE GetEMP
AS
BEGIN 
 
 select * from Employee E INNER JOIN Dept D ON E.D_NM = D.D_Name
 where E.E_ID IS NOT NULL
 
END 
-- modify 
ALTER PROCEDURE GetEMP
AS
BEGIN 
 
 select * from Employee E INNER JOIN Dept D ON E.D_NM = D.D_Name
 where E.E_ID IS NOT NULL
 order By 1 

END 

-- EXECUTE GetEMP
EXEC GetEMP

-- SP with I/P parameters
Create procedure [dbo].[EmpInFo_IP] (@ip_Param int)
AS
BEGIN

 select * from Employee E INNER JOIN Dept D ON E.D_NM = D.D_Name
 where E.E_ID = @ip_Param
 order By 1 

END

Alter procedure [dbo].[EmpInFo_IP] (@ip_Param int,@D_nm varchar(20))
AS
BEGIN

select * from Employee E INNER JOIN Dept D ON E.D_NM = D.D_Name
 where E.E_ID = @ip_Param and D.D_Name = @D_NM

END

DROP procedure [EmpInFo_IP]

EXEC [EmpInFo_IP] 102,'CS'

-- With input & output parameters 
Create Procedure [dbo].[EMPOutput] (@Empid int, @salary float output)
AS 
Begin 

select @salary = E.Salary
from Employee E 
where E.E_id = @Empid

End 

Alter Procedure [dbo].[EMPOutput] (@Empid int, @dept_Name varchar(20) output)
AS 
Begin 

select @dept_Name = D.d_name
from Emp E inner join Dept D on E.D_id = D.Dept_id 
where E.E_id = @Empid

End 

Drop Procedure [dbo].[EMPOutput]

Declare @Test float
Exec [dbo].[EMPOutput] 100, @Test output
select @Test

select * from Employee
-- create function 

DROP Function [dbo].[GetEmpFullName]

Create Function [dbo].[GetEmpFullName]
(
@Fn varchar(20),
@MN varchar(20),
@LN varchar(20)
)
returns varchar(20)
AS

Begin 

return (select @Fn + ' ' + @MN + ' ' + @LN)

End 

-- Execution of function
select [dbo].[GetEmpFullName] ('ABC',' ','XYZ')
-- delete function permanently
DROP Function [dbo].[GetEmpFullName] 

select [dbo].[GetEmpFullName](E_Name,' ',D_NM) from Employee

-- use case 
select EmpID,[dbo].[GetEmpFullName] (FirstName,LastName),Salary 
from Employee

exec sp_helptext 'EMPOutput'

exec sp_helpindex 'Table name'

sp_rename 
sp_renamedb 

select * from Test

delete [dbo].[Location] -- R&D 

