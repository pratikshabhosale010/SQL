
-- Constraints 
-- rules or regulations imposed by user on data to ensure data integrity 

-- PK 
-- UK 
-- FK 
-- Check 
-- Not NULL 
-- Default 

-- PK 
-- no duplicates 
-- no nulls 

Create Table Tb1 
(
TId int Primary key,
F_name char(20),
sales float 
)

Create Table Tb2 
(
Id int ,
F_name char(20),
sales float ,
TableId1 int foreign key references TB1(Tid)
)

CREATE TABLE Contract_Emp
( 
  employee_id INT NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  first_name VARCHAR(50),
  salary float check (salary > 0)
)
select * from Contract_Emp1
CREATE TABLE Contract_Emp1
( 
  employee_id INT NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  first_name VARCHAR(50),
  salary float default 100
)

insert into Contract_Emp1(employee_id,last_name,first_name,salary) values (101,'ABC','DEF',2000)
insert into Contract_Emp1(employee_id,last_name,first_name)        values (101,'ABC','DEF')
insert into Contract_Emp1(employee_id,last_name,first_name,salary) values (120,'ABC','DEF',2300)
insert into Contract_Emp1(employee_id,last_name,first_name,salary) values (101,'ABC','DEF',2000)
insert into Contract_Emp1(employee_id,last_name,first_name,salary) values (101,'ABC','DEF',2000)

-- table level ( create table statement)
-- column level ( after table creation  by using Alter )
-- table level constraints 
create Table Tablenm
(
id int primary key,
name varchar(20) not null,
salary float
)

-- column level constraints 
create Table Tablenm
(
id int, 
name varchar(20) ,
salary float
)

Alter Table Tablenm ADD Constraint <cons_nm> Primary key (id)
Alter Table Tablenm ADD Constraint <cons_nm> Unique (id)
Alter Table Tablenm ADD Constraint <cons_nm> Foreign key (id) References Tablenm1(id)

Alter Table Tablenm DROP Constraint <cons_nm>


Alter Table Tablenm Alter <columnNm> varchar not null  








