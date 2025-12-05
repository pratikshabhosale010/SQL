
-- DCL 
-- Create Login
CREATE LOGIN [EmpLogin] WITH PASSWORD = N'passpass' MUST_CHANGE
, DEFAULT_DATABASE=[MYDB]
, CHECK_EXPIRATION=ON
, CHECK_POLICY=ON
 
-- Create the Database User
CREATE USER [EMPUser] FOR LOGIN [EmpLogin]
GO

-- GRANT
GRANT <Previledge> ON <DBO> TO <user>
GRANT delete,UPdate ON EMP TO [EMPUser];
-- REVOKE
REVOKE delete ON EMP FROM [EMPUser];

-- privilege list
EXECUTE
UPDATE
SELECT
DELETE
ALTER
ALL

-- TCL 
-- a single logical unit of operation 
-- ACID properties 
Atomicity - all or nothing 
Consistency
Isolation
Durability 

DELETE from EMP where E_Id = 101
Insert into EMP values (101,'ABC',2400)



Begin Transaction A
delete from EMP where Id = 101
Commit
select * from EMP 

Begin Tran A
delete from EMP where Id = 102
select * from EMP where Id = 102

Rollback 

-- savepoint ( goto lable)

Begin Tran A
delete from EMP where E_Id = 1
save transaction B
update EMP set E_ID = 2 where E_ID = 4
rollback Transaction B
select * from EMP 

Begin Tran A 
save transaction B
Truncate table Emp 
rollback Tran B

select *  from EMP 

-- Group by & Having 

Use ABC
GO

select * from Employee

select Address, sum(salary) as Total_Salary from Employee
group by Address

select FirstName,Address, sum(salary) as Total_Salary from Employee
group by Address

select Address, sum(salary) as Total_Salary from Employee
group by Address
having sum(salary) > 30000

-- Order of Execution
FROM
JOIN 
WHERE
GROUP BY
HAVING
SELECT
Distinct 
TOP
ORDER BY

-- Index 
-- CREATE Clustered INDEX In_emp ON EMP(E_Name)
CREATE NonClustered INDEX In_emp ON EMP(E_Name)
DROP INDEX In_emp ON EMP

Alter Index In_emp ON EMP(E_Name)