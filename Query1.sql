-- select * from student;

-- select first_name, last_name, department from staff
-- where department = 'COMPUTER SCIENCE'


-- select first_name, last_name, department from staff
-- where upper(department) = 'COMPUTER SCIENCE'


-- select first_name, last_name, department from staff
-- where upper(department) in ('COMPUTER SCIENCE','MATHEMATICS')
-- limit 2

-- select first_name, last_name, department from staff 
-- order by first_name desc, department asc
-- order 1 asc,2 desc,3


-- order by
-- limit 


-- select 
--   su.first_name as student_name, 
--   st.first_name as staff_name , 
--   su.department,
--   st.department
-- from student su inner join staff st 
-- on su.department = st.department ;

-- select 
--   su.first_name as student_name, 
--   st.first_name as staff_name , 
--   su.department,
--   st.department
-- from student su left join staff st 
-- on su.department = st.department ;

-- select 
--   su.first_name as student_name, 
--   st.first_name as staff_name , 
--   su.department,
--   st.department
-- from student su right join staff st 
-- on su.department = st.department ;


-- select 
--   su.first_name as student_name, 
--   st.first_name as staff_name , 
--   su.department,
--   st.department
-- from student su full outer join staff st 
-- on su.department = st.department ;


-- select 
--   su.first_name as student_name, 
--   st.first_name as staff_name , 
--   su.department,
--   st.department
-- from student su cross join staff st 
-- on su.department = st.department ;


select * from student;
select * from staff;


-- A B
-- 1 1
-- 1 1
-- 2 3
-- 2 2
-- 3 0


-- A FOJ B




-- A LJ B = B RJ A
-- A RJ B = B LJ A


-- A RJ B
-- 11
-- 11
-- 11
-- 11
-- 22
-- 22
-- 33
-- N0

-- A LJ B
-- 11
-- 11
-- 11
-- 11
-- 22
-- 22
-- 33

-- A IJ B
-- 11
-- 11
-- 11
-- 11
-- 22
-- 22
-- 33


-- (A IJ B) IJ C) = A IJ B( IJ C)

-- (A ^ B ) ^ c = a ^ (B^C)


-- A B C
-- 1 3 5
-- 3 6 6
-- 5 7 3

-- Done
-- select
-- where
-- in 
-- order by
-- liimit
-- JOINS

-- To-be-done  
-- Subquery and CTE
-- Group by - having
-- window functions