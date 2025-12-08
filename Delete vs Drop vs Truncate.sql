-- DROP
DDL
removes database objects permanently 
structure + data 
index + constraints 
cant rollback 
faster (performance)
cant use where clause 
-- Truncate 
DDL
Deletes whole table data 
data
structure + index + constraints  = present 
cant rollback ( using savingpoint you can)
faster 
cant use where clause
-- Delete 
DML
removes data from table 
data 
structure + index + constraints  = present 
rollback is possible 
slower ( as it deletes data row-wise)
can use where clause 