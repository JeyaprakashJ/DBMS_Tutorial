Update
-- update products set id = 99 where id = 3;
-- select * from products;
-- update products set id = 3 where id = 99;
-- select * from products;


-- insert into orders (id, customer_id, order_date, total_amount)
-- VALUES
-- (44,3, '2023-09-17', 1000);
-- select * from orders;


-- select * from order_items;
-- update order_items set order_id = 44 where order_id = 4;
-- select * from order_items;

-- 1. Change order_id of a record in OI table
-- 	FK Violation
-- 2. Make sure that new order_id is present in Ordes table
-- 	1. Update
--     2. Insert
-- 3.  Change order_id in OI items table.



like 

-- select * from products where name = 'Cricket bat';
-- select * from products where name in( 'Cricket bat','Cricket ball');


-- select * from products where name like 'Cricket%';
-- select * from products where name like '%ball';
-- select * from products where name like 'C%l';
-- select * from products where name like 'Cricket____';
-- select * from products where name like 'Cricket_____%';



Alter
-- ALTER TABLE products ADD test int;
-- select * from products;

-- ALTER TABLE products RENAME COLUMN test TO TESTTEST;
-- select * from products;


-- ALTER TABLE products DROP COLUMN TESTTEST;
-- select * from products;


-- Alter table table_name add column_name datattype



Union and Union All - Example 1
-- CREATE TABLE A (
--   id CHAR(1)
-- );
-- CREATE TABLE B (
--   id CHAR(1)
-- );
-- INSERT INTO A 
-- VALUES (1),(1),(2),(2);

-- INSERT INTO B
-- VALUES (1),(1),(3);

-- Union and Union All - Example 2
CREATE TABLE AA (
  id1 CHAR(1),
  id2 char(1)
);
CREATE TABLE BB (
  id1 CHAR(1),
  id2 char(1)
);
INSERT INTO AA 
VALUES (1,1),(1,2),(2,1),(4,1);

INSERT INTO BB
VALUES (1,2),(1,1),(3,0);



Aggregate Functions
-- select sum(price) from order_items;
-- select avg(price) from order_items;

-- select sum(price),avg(price),min(price), max(price), count(price) from order_items;

-- select sum(price),round(avg(price),2),min(price), max(price), count(price) from order_items;

-- select sum(price)/count(price) AS MEAN,
-- sum(price),round(avg(price),2),ceil(avg(price)),floor(avg(price)),min(price), max(price), count(price) from order_items;


GROUP by

-- select product_id, sum(price) from order_items 
-- group by product_id;

-- select product_id, count(product_id) from order_items 
-- group by product_id;

-- select district_id,store_id from STORES
-- group by district_id,store_id;


-- Syntax: extract month from date
-- syntax: year from date
  
-- extract(month from cast(date_column_but_string as Date))

Having

-- select * from stores where total_sales>1000;


-- select district_id, store_id, sum(total_sales) from stores
-- group by district_id, store_id;

-- select district_id, store_id, sum(total_sales) from stores
-- group by district_id, store_id having sum(total_sales) > 2000;


Extract

-- select EXTRACT( month from record_date), sum(total_sales)
-- from stores 
-- group by EXTRACT( month from record_date) 
-- order by EXTRACT( month from record_date);


Case When
--cutoff 1500

-- select *,
-- case 
-- when total_amount >= 1500 then 'High'
-- when total_amount < 1500 then 'Low'
-- end as Priority
-- from orders;


-- case 
-- when condition then value
-- end as column_name


-- select *, 
-- case 
-- 	when total_amount>=1500 then 1 
-- 	when total_amount<1500 then 0
-- end as Priority
-- from orders


CTE
-- with cte as (
-- select district_id,store_id, sum(total_sales) from stores
-- group by district_id,store_id)

-- select * from cte where sum>2500;


-- select district_id,store_id, sum(total_sales) from stores
-- group by district_id,store_id having sum(total_sales) > 2500



-- select * from products where id not in (
--   select distinct product_id from order_items);
  
  
-- with cte as (select distinct product_id from order_items)
-- select * from products p left join cte c 
-- on p.id = c.product_id 
-- where c.product_id is Null;


-- with cte as (select distinct product_id from order_items)
-- select * from products where id not in (select * from cte)



Window Functions

-- select * from (
-- with cte as(
-- select district_id,store_id, sum(total_sales) as sts from stores
-- group by district_id,store_id )

-- select *, rank() over (partition by district_id order by sts desc) from cte) a
-- where a.rank <=2

Assignment will follow..