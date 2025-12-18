
-- Set Operators 
union - combine two or multiple result sets(select query) by removing duplicates
union all - combine two or multiple result sets keeping duplicates
intersect - common records between result sets
except - gives records those are present in first result sets but not in the second


** Rules ** 
1. no of columns in each result set should be same 
2. Each corresponding column data types should be compatible 

use [ABC]
go

Create TABLE Finance_EMP
(
ID Int,
E_Name varchar(20),
Salary float
)
GO
Create TABLE IT_EMP
(
ID Int,
E_Name varchar(20),
Salary float
)
GO
Create TABLE HR_EMP
(
ID Int,
E_Name varchar(20),
Salary float,
E_Address varchar(20)
)
GO

Insert into [Finance_EMP] values (101,'Rahul sharma',2400)
Insert into [Finance_EMP] values (102,'Rakesh Ahuja',3200)
Insert into [Finance_EMP] values (104,'Bob Martin',1200)
Insert into [IT_EMP] values (100,'S Chaand',1200)
Insert into [IT_EMP] values (101,'Rahul sharma',2400)
Insert into [IT_EMP] values (102,'Rakesh Ahuja',3600)
Insert into [IT_EMP] values (107,'Gopi S',2700)
Insert into [HR_EMP] values (100,'S Chaand',1200,'Bangalore')
Insert into [HR_EMP] values (101,'Rahul sharma',2400,'Chennai')
Insert into [HR_EMP] values (102,'Rakesh Ahuja',3200,'Bangalore')
Insert into [HR_EMP] values (106,'Minal P',2000,'AP')


select * from [dbo].[HR_EMP]
select * from [dbo].[Finance_EMP]
select * from [dbo].[IT_EMP]

select <col_list> from Table 
union / union all / Except / Intersect 
Select <col_list> from Table 


select * from [dbo].[Finance_EMP]
EXCEPT
select * from [dbo].[IT_EMP]



Select * From (
select * from [dbo].[Finance_EMP]
Except
select * from [dbo].[IT_EMP]
) A
union all 
Select * from (
select * from [dbo].[IT_EMP] 
Except
select * from [dbo].[Finance_EMP]
) B




select ID,E_NAME,Salary,NULL from [dbo].[Finance_EMP]
union 
select ID,E_NAME,Salary,NULL from [dbo].[IT_EMP]
union  
select ID,E_NAME,Salary,E_Address from [dbo].[HR_EMP] 

-- union all ( merges result set from multiple tables including duplicates)

select id,F_name from [dbo].[Finance_EMP]
union all
select id,F_name from [dbo].[IT_EMP]
union all
select id,F_name from [dbo].[HR_EMP] 


select * from [dbo].[Finance_EMP]
select * from [dbo].[HR_EMP]
select * from [dbo].[IT_EMP]

select id,F_name from [dbo].[Finance_EMP]
union all
select id,F_name from [dbo].[IT_EMP]
union 
select id,F_name from [dbo].[HR_EMP] 

-- intersect (common records from result sets)
select id,F_name from [dbo].[Finance_EMP]
Intersect
select id,F_name from [dbo].[IT_EMP]


select id,F_name from [dbo].[Finance_EMP]
Intersect
select id,F_name from [dbo].[IT_EMP]
Intersect 
select id,F_name from [dbo].[HR_EMP] 


-- Except (A-B)
select id,F_name from [dbo].[Finance_EMP]
Except
select id,F_name from [dbo].[IT_EMP]
Intersect 
select id,F_name from [dbo].[HR_EMP] 


