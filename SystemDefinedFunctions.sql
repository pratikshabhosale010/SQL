-- String Functions --
-- Ascii (american stanard code for information interchange)
select ASCII('a')
select ASCII('Aello are ahhasa')
-- Char
select Char(65)

-- CharINDEX
select charindex('o','Google.com')
select charindex('o','Google.com',4)
select charindex('g','Google.com')
select charindex('com','Google.com')

--mailID
--amresh02@gmail.com
--amresh08debata@gmail.com

--substring(mailid,1,Charindex('@',mailid))




-- concat
select 'Am' + 'Debata' 
select concat('Am',' ','Debata')

select 'Am' + NULL
select 'Am' + 'NULL'
select concat('Am',NULL,'Debata')

-- Datalength 
select Datalength('  ABCD  ')
-- length 
select len('  ABCD  ')

-- lower & Upper
select lower('ABCD')
Select upper('abcd')

-- left & right 
select left('ABCD',2)
Select right('abcd',3)

-- TRIM 
select RTRIM(LTRIM('      ABCD         '))
select RTRIM('      ABCD         ')
select TRIM('      ABCD         ')
-- STUFF
SELECT STUFF('google.com', 7, 4, ' is a great site!');
-- Replace
select replace('google.com', '.com', ' is a great site!');
-- Substring 
Select SUBSTRING('ABCDEFGH',1,2)

-- Airthmatic function 
max() 
min()
sum()
avg()
count()
select max(salary) from Employee
select count(E_Id) from Employee

-- Date functions 
-- system date or current date
select getdate()

-- extract year 
select year(getdate())
-- extract month
select month('2024-11-28')
-- extract day
select Day(getdate())

-- select * from Employee where year(Joindate) = 2020

-- Datepart
select Datepart(WEEKDAY,getdate()) -- int 
-- DateName
select Datename(WEEKDAY,getdate()) -- char 

-- Add date
Select Dateadd(YY,3,getdate())

-- Difference between dates
Select datediff(MM,'2023-06-22',getdate()) -- 3rd - 2nd 

-- End of month 
select EOMONTH(getdate())

select EOMONTH(Dateadd(MM,2,getdate()))

-- Advanced functions 
ISNULL
COALESCE
NULLIF
CAST 
CONVERT 
CASE 

-- ISNULL (not null value)
select ISNULL('am','de')
select ISNULL(NULL,'de')
select ISNULL(NULL,NULL)

select ISNULL(Firstname,Lastname)

FirstName    LastName
Amresh	     debata
		     sharma
K Sharma

Name 
amresh
sharma
abcd

-- COALESCE (first not null value)
select Coalesce(null,'ab',null,'cd')
select Coalesce(null,null,null,2,2*NULL)
select Coalesce('abc c d','ab',null,'cd')

salary1 salary2 salary3 salary4
1000                     1200       1000
        1200     1300               1200
                 1400               1400
                         2000       2000

-- NULLIF (to check two values are similar or not, else first exp value)
select NULLIF(2*NULL,'abcd')
select NULLIF('ab',NULL)
select NULLIF('abcd','abcd')

-- ISNULL   (2-arguments, first not-null value, can directly pass NULL)
-- COALESCE (N-arguments, first not-null value, can not directly pass NULL, expression can be evaluated to NULL)
-- NULLIF ((2-arguments, returns NULL if both are same else first value , first arg can not be NULL,second arg can not be NULL, expression can be evaluated to NULL)

-- Type casting (cast, convert)
-- CAST 
cast(col as datatype) 

select cast(Salary as Numeric(10,2)) as Sal from Employee
select cast(ISNULL(salary,0) as Numeric(10,2)) as Sal from Employee
-- convert 
select convert(float,salary) as DT from Employee
select convert(datetime,getdate()) as DT from Employee

-- case statement (nested if else)
     select *,
     case 
	 When E_ID = '100' then salary + 500    
	 When E_ID = '101' then salary + 600
	 When E_ID = '102' then salary + 800
	 ELSE salary+100
	 END 	 as Dept_Bonus
	 from EMPloyee
	 
	  select * from EMPloyee

	 





