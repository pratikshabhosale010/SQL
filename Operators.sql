-- Arithmatic operator (+, - , * , / , % )
update Employee set Salary = Salary + 3000 where EmpID = 2 

-- Modulos operator
select 2 % 5 

-- Conditional operator (< , > , <= , >= , =, <> , !=) 
select * from Employee where salary > 20000
select * from Employee where empid != 1

-- Logical operators (AND, OR, NOT, EXISTS, LIKE, IN , Between , IS NULL )

-- AND (combines multiple conditions)
select * from Employee where Salary > 20000 and Address = 'Delhi'

-- OR (satisfy either of conditions)
select * from Employee 
where Salary > 20000 OR Address = 'Noida'

-- Between (range of values)
select * from Employee 
where Salary between 19000 and 25000

-- Not (negation)
select * from Employee 
where Salary not between 19000 and 25000
select * from Employee where Empid NOT IN (1,2,3,4)

-- IN ( compare a list of values )
select * from Employee where Empid IN (1,2,3,4) 

-- like ( pattern matching)
_ -> single char
% -> zero or more chars 

select * from Employee where FirstName like 'A%'
select * from Employee where FirstName like '%h'

select * from Employee where FirstName like '_a%'





