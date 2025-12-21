
-- JOIN --

1. INNER JOIN (matching records) 
2. Outer JOIN 
  2.1 Left outer Join 
  2.2 Right Outer Join 
  2.3 Full outer Join 
3. Cross Join 

select * from Employee
select * from Dept

select <col_list> from Table1 <JOIN Type> TABLE2 ON <JOIN Condition>

-- INNER JOIN -- 
-- matching records 
select * from Employee
select * from Dept

Select *
FROM Employee E INNER JOIN DEPT D ON 
E.D_NM = D.D_Name 

-- LEFT OUTER JOIN -- 
-- Everything from Left side table 

Select *
FROM Employee  LEFT OUTER JOIN DEPT  ON Employee.d_NM = Dept.D_Name

-- RIGHT OUTER JOIN -- 
-- Everything from Left side table

Select *
FROM Employee E RIGHT OUTER JOIN DEPT D ON E.d_NM = D.D_Name


Select * FROM Employee E FULL OUTER JOIN DEPT D ON E.d_NM = D.D_Name


select * from Employee Cross join Dept

-- Multiple Tables --

select * from Employee E INNER JOIN Dept D ON  E.d_NM = D.D_Name
INNER JOIN sales S ON D.D_name = S.D_name and S.D_Addresss = D.D_Addresss
-- where 
-- group by 
-- having 
-- order by 

-- Cross Join --
-- m*n records (T1 contains m rows & T2 contains n rows)
-- no join condition 
-- create all possible combination of second table for each record from first table
-- Select <col_list> from T1 Cross JOIN T2

create Table Sale_Flag
(
Act_Bud_Flag varchar(10)
)
GO
Create Table FY
(
FY_Year char(4),
FY_Mon char(3)
)

GO 

Insert into Sale_Flag values ('Act'),('Bud')
Go
Insert into FY values ('FY23','Jan'),('FY23','Feb'),('FY23','Mar'),('FY23','Apr')
Insert into FY values ('FY24','Jan'),('FY24','Feb'),('FY24','Mar'),('FY24','Apr')
Insert into FY values ('FY25','Jan'),('FY25','Feb'),('FY25','Mar'),('FY25','Apr')

Select * FROM FY 
select * from Sale_Flag

Select * FROM FY Cross JOIN Sale_Flag

-- Sub Query --
-- Query(Query)

-- sub-query / inner query
-- main-query / outer query
-- sub-queries are slower -> Joins


select * from Employee
select * from Dept
select *  from sales

-- Single row -- 
Select * from Employee where D_NM =  (select D_NAME from Dept Where D_Address = 'Bangalore')

-- Multi Row --   
Select * from Employee where D_NM IN (select D_NAME from Dept where D_NAME is not NULL)
select * from Employee where D_NM in ('CS','IT','ELEC')

-- Co-related Queries --
select * 
from Sales D1 Where D1.Sales > 
(select min(Sales) from Sales D2
where D1.D_Name = D2.D_Name and D1.D_Address = D2.D_Address)

select * from Sales

-- Exists -- 
SELECT * FROM Dept 
WHERE EXISTS (SELECT * FROM Sales WHERE D_Name =  'IT')

SELECT * FROM Dept 
WHERE NOT EXISTS (SELECT * FROM Sales WHERE D_Name =  'MECHANICAL')
