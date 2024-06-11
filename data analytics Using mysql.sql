use sfdata ;

-- 1 show all colums and rows in the table.
 
select * from salaries ;
 
-- 2 show only the employeename and jobtitle cloums.
 
select EmployeeName,JobTitle from salaries ;
 
-- 3 show the number of employees in the table.
 
select count(id) from salaries ;
-- result=148654 employee
 
-- 4 show the unique gob titles in the table.
select distinct JobTitle from salaries ;
 
-- 5 how many types of jobs are in the table ?
 
select count(distinct JobTitle) from salaries ;
-- result=1637 type
 
-- 6 show the job title and overtime pay for all employees with overtime pay greater than 50000.
 
select JobTitle,OvertimePay from salaries where OvertimePay>50000 ;
-- how many are there ?
select count(OvertimePay) from salaries where OvertimePay>50000 ;
-- result = 2165

-- 7 show the average base pay for all emplooyes.

select avg(basepay) from salaries ;
-- result = 66053.72928809702 

-- 8 the top highest paid employees. 

select employeename,totalpay from salaries order by totalpay desc
limit 10 ;

-- 9 show all managers in the table .

select employeename,jobtitle from salaries where jobtitle like '%Manager%' ;
-- how many Managers are there .  
select count(jobtitle) from salaries where jobtitle like '%Manager%' ;
-- result=4110

-- 10 show that all employees are not managers .

select employeename,jobtitle from salaries where jobtitle not like '%Manager%' ;

-- 11 all employees with a total pay between 50,000 and 75,000.

select id,employeename,jobtitle,totalpay from salaries where totalpay>=50000 and totalpay <=75000 ;
-- or
select id,employeename,jobtitle,totalpay from salaries where totalpay between 50000 and 75000 ;

-- 12 show all employees with a total pay benefits value between 125,000 and 150,000 and the job title is "Director".

select id,employeename,jobtitle,totalpaybenefits from salaries where totalpaybenefits between 125000 and 150000 and jobtitle like '%Director%' ;

-- 13 show all employees ordered by their total pay benefits in descending order. 

select id,employeename,jobtitle,totalpaybenefits from salaries order by totalpaybenefits desc ;

-- 14 show all jobs with an average base pay of at least 100,000 and order them by the average base pay in descending order.

select jobtitle,avg(basepay) as 'avgbasepay' from salaries group by jobtitle having avg(basepay) >=100000 order by avgbasepay desc ;

-- 15 the highest avarage base pay

select jobtitle, basepay as 'avgbasepay' from salaries group by jobtitle order by avgbasepay desc
limit 1;