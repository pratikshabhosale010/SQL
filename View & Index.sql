use [ABC]
Go 

-- View --
-- database Object 
-- holds query definition (select query)
-- does not hold any data inside it 
-- security 
-- necessary details 


create view <view_name>
AS
<select query>


-- create view 
Create View vw_Emp
AS
select * 
from Sales D1 Where D1.Sales > 
(select min(Sales) from Sales D2
where D1.D_Name = D2.D_Name and D1.D_Address = D2.D_Address)

-- execute view
select * from vw_Emp 

select * from vw_Emp where id = 6

-- Modify the view 
Alter View vw_Emp
AS
select * 
from Sales D1 Where D1.Sales > 
(select min(Sales) from Sales D2
where D1.D_Name = D2.D_Name )

-- Delete the view 
Drop view vw_EMP

-- Rename View 
exec SP_rename 'vw_EMP','vw_EMP2'

-- cant use order by clause in view 
Create View vw_Emp
AS
select distinct FirstName +' ' + LastName as Fullname,
salary, Address from Employee
where Address = 'Noida'
order by Salary

-- EXEC SP_helptext 'vw_Emp'

-- Index 
-- Database object 
-- faster retrival of records 

create index index_emp ON Employee(EmpID)

create clustered index index_emp ON Employee(EmpID)

Alter index index_emp ON Employee(salary)

Drop Index index_emp

EXEC SP_RENAME 'Employee.index_emp','index_emp2','INDEX'

Alter index index_emp ON Employee(EmpID DESC) with Reorganize 

-- column numbers 
-- simple    - create index index_emp ON Employee(EmpID)
-- composite - create index index_emp ON Employee(EmpID,E_name)

Re-organize , rebuild - optimization 

defragmentation - sql profiler
30%

Drop Index 
Load data 
Recreate Index 