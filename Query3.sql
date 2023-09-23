
select * from student;
select * from staff; 
select * from assets;


-- subqueries 201
-- sql order of execution
-- postgresql datetime functions
-- Normalisation

-- Window functions 201
-- DB connection & ops from python

select avg(salary) from staff;

--Subqueries 201
-- 1. Staff with more than average salary
-- 6083.3333333333333333

select * from staff where salary > 6083;


select * from staff where salary > (select avg(salary) from staff);


-- 2. Staff with more than max salary within each department

select department,max(salary) from staff group by department;

select * from staff 
where (department,salary)
in(
	select department,max(salary) from staff group by department
	);
	
-- within each dept, I wanna fetch staf who gets more than avg salary

-- 3. Staff with more than max salary within each department
--Correlated Subquery example
select *
from staff a
where salary >= (
	select avg(salary)
	from staff b
	where a.department = b.department);
	
O(Exponential)

select

--***********************************************Above using cte

-- fetch median
-- the 10values 5th value + 6th value / 2
-- 11 -> 6th value

1. sort based on salary
2. create a new column which will give a ordered number based on the new sort
3. Odd -> n/2th element salary is median
4. even -> ((n/2 +1th element) + (n/2th element)) / 2


-- outliers 

-- 10cm - 300cm
-- alien - 3000cm

-- -- outlier - treat
-- 120 140 160 3000
-- average = 750

-- 120 140 160 3000
-- median = 150

-- Mean is more affected by outliers than median

--------------------------------------

-- Order of execution
-- from -  Choose and join tables to get base data.
-- where - Filters the base data.
-- group by - Aggregates the base data.
-- having - Filters the aggregated data.
-- select - Returns the final data.
-- order by - Sorts the final data.
-- limit - Limits the returned data to a row count.


select department,max(salary) from staff 
group by department having sum(salary)>1;

-- new dataset
-- COlumns selected
-- sorting
-- lmit




-- https://www.postgresql.org/docs/current/functions-datetime.html

select now();
select current_date, current_date - 7

-- Where it is used: To get past n days data
-- How it is used: where date_column between current_date and current_date-7


-- Get the current date and time
SELECT CURRENT_DATE, CURRENT_TIME, NOW();

-- Extract the year from a timestamp
SELECT EXTRACT(YEAR FROM NOW());

SELECT EXTRACT(YEAR FROM to_date('2023-02-02','yyyymmdd'));
			   
SELECT date_of_birth, EXTRACT(month FROM date_of_birth) 
			   from staff;


select * from staff where 
EXTRACT(month FROM date_of_birth) = EXTRACT(month FROM now()); 


-- '01-02-2023'
-- '02-01-2023'

-- Truncate a timestamp to the day
SELECT DATE_TRUNC('year', NOW());
SELECT DATE_TRUNC('month', NOW());
SELECT DATE_TRUNC('day', NOW());

SELECT 
	now(),
	DATE_TRUNC('year', NOW()), 
	DATE_TRUNC('month', NOW()), 
	DATE_TRUNC('day', NOW());


-- Convert a string to a date

SELECT TO_DATE('2023-09-23');
SELECT TO_DATE('2023-09-23','YYYY-MM-DD');
SELECT TO_DATE('00 February 20','YYY Month dd'); 
-- invalid date string
SELECT TO_DATE('2017/02/30', 'YYYY/MM/DD');


-- Convert a string to a timestamp
SELECT TO_TIMESTAMP('2023-09-23 08:22:07','Format here');

-- Calculate the difference between two dates
SELECT NOW() - CURRENT_DATE;
--------------------------------------------

1NF : Atomicity 
2NF: 1NF + No partial Dependancy
3NF: 2NF + No Transitive Dependancy


select * from orders;

select * from 
	(
	with cte as 
	(select state_id, store_id, sum(o_value) as tot_sum
	from orders group by state_id, store_id order by state_id, store_id
	)

	select state_id, store_id,tot_sum, 
	dense_rank() over( partition by state_id order by tot_sum asc  ) as store_rank
	from cte
	) a where a.store_rank in (1,2)



select state_id, store_id,o_value, row_number() over( partition by state_id order by o_value desc )
from orders;




select state_id, store_id,o_value, sum(o_value) 
from orders
group by state_id,store_id,o_id,o_value
order by state_id,store_id









