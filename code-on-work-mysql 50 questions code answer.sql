use ORG;

-- 1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
 
select 	FIRST_NAME as WORKER_NAME 
from Worker;

-- 2.  Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
 
select  upper(FIRST_NAME) 
from worker;

-- 3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
 
select distinct DEPARTMENT 
from Worker;

-- 4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
 
select substr(FIRST_NAME ,1 ,3) 
from worker;

-- 5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.

select instr(FIRST_NAME,'a') 
from worker
where  FIRST_NAME = 'Amitabh';

-- 6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
 
select rtrim(FIRST_NAME)
from worker;

-- 7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
 
select ltrim(DEPARTMENT)
from worker;

-- 8.Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
 
select distinct length(DEPARTMENT) 
from worker;

-- 9.Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.

select replace(FIRST_NAME, 'a', 'A')
from worker;

-- 10.Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.
 
select concat(FIRST_NAME , ' ' , LAST_NAME)
from worker;

-- 11.Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
 
select 
		FIRST_NAME
from worker
order by 
        FIRST_NAME asc;
        
-- 12.Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
 
select
        FIRST_NAME,
        DEPARTMENT
from worker
order by
		FIRST_NAME asc,
        DEPARTMENT desc;

-- 13.Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table

select * from worker
where FIRST_NAME in ('Vipul' , 'Satish');

-- 14.Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.

select * from worker
where FIRST_NAME not in ('Vipul' , 'Satish');

-- 15.Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
 
select * from worker
where DEPARTMENT = 'Admin';

-- 16.Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
 
 select * from worker
 where FIRST_NAME like '%a%';

-- 17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
 
 select * from worker
 where FIRST_NAME like '%a';

-- 18.Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
 
 select * from worker
 where FIRST_NAME like '_____h';
 
 -- 19.Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
 
select * from worker 
where SALARY between 100000 and 500000;

-- 20.Write an SQL query to print details of the Workers who have joined in Feb’2014.

select * from worker
where joining_date like '2014-02%';

-- 21.Write an SQL query to fetch the count of employees working in the department ‘Admin’.

select count(*)
from worker
where DEPARTMENT = 'Admin';

-- 22.Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.

