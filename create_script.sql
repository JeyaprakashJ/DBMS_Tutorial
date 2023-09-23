-- truncate vs drop
-- truncates deletes all the rows in the table and retains an emptry table.
-- Drop deltes the tables entirely and removes it from DB

-- drop table if exists demo;

-- CREATE TABLE demo (
--   id INT ,
--   name VARCHAR(50),
--   PRIMARY KEY(id)
-- );

-- CREATE TABLE A (
--   id CHAR(1)
-- );

-- CREATE TABLE B (
--   id CHAR(1)
-- );

-- INSERT INTO A 
-- VALUES
-- (1),
-- (1),
-- (2),
-- (2),
-- (3),
-- (NULL)
;


-- INSERT INTO 
-- VALUES
-- (1),
-- (1),
-- (3),
-- (2),
-- (0),
-- (NULL)
;



-- INSERT INTO demo ()
-- VALUES
-- (1,'User1'),
-- (2,'User2');

-- drop table demo;

CREATE TABLE student (
  id INT NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  gender CHAR(1) NOT NULL,
  date_of_birth DATE NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone_number VARCHAR(15) NOT NULL,
  email VARCHAR(255) NOT NULL,
  department VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE staff (
  id INT NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  gender CHAR(1) NOT NULL,
  date_of_birth DATE NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone_number VARCHAR(15) NOT NULL,
  email VARCHAR(255) NOT NULL,
  designation VARCHAR(50) NOT NULL,
  department VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);



CREATE TABLE assets (
  id INT NOT NULL,
  asset_name VARCHAR(50) NOT NULL,
  asset_type VARCHAR(50) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  location VARCHAR(255) NOT NULL,
  condition VARCHAR(50) NOT NULL,
  department VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);


INSERT INTO student (id, first_name, last_name, gender, date_of_birth, address, phone_number, email, department)
VALUES
  ('1', 'Kumar', 'Doe', 'M', '1990-01-01', '123 Main Street, Anytown, CA 91234', '123-456-7890', 'kum@email.com', 'Computer Science'),
  ('2', 'kk', 'Doe', 'M', '1990-01-01', '123 Main Street, Anytown, CA 91234', '123-456-7890', 'kum@email.com', 'Computer Science'),
  ('3', 'Ashish', 'Doe', 'F', '1991-02-02', '456 Elm Street, Anytown, CA 91234', '456-789-0123', 'ash@email.com', 'AI');


INSERT INTO staff (id, first_name, last_name, gender, date_of_birth, address, phone_number, email, designation, department)
VALUES
  ('1', 'Kipling', 'Smith', 'M', '1970-03-03', '789 Oak Street, Anytown, CA 91234', '789-012-3456', 'kip@email.com', 'Professor', 'Computer Science'),
  ('2', 'Ram', 'Prasath', 'M', '1971-04-04', '567 Pine Street, Anytown, CA 91234', '567-890-1234', 'ram@email.com', 'Chair', 'Mathematics'),
  ('3', 'Thi', 'Smith', 'M', '1970-03-03', '789 Oak Street, Anytown, CA 91234', '789-012-3456', 'kip@email.com', 'Professor', 'Computer Science'),
  ('4', 'Deepiga', 'Smith', 'M', '1970-03-03', '789 Oak Street, Anytown, CA 91234', '789-012-3456', 'kip@email.com', 'Professor', 'Computer Science'),
  ('5', 'Arun', 'Smith', 'M', '1970-03-03', '789 Oak Street, Anytown, CA 91234', '789-012-3456', 'kip@email.com', 'Professor', 'Zoology'),
  ('6', 'Arun', 'Pandian', 'M', '1970-03-03', '789 Oak Street, Anytown, CA 91234', '789-012-3456', 'kip@email.com', 'Professor', 'Physics')
  
  ;


INSERT INTO assets (id, asset_name, asset_type, price, location, condition, department)
VALUES
  ('1', 'Computer Lab', 'Furniture', 100000, 'Building 1, Room 101', 'Good', 'Computer Science'),
  ('2', 'Science Lab Equipment', 'Equipment',  200000, 'Building 2, Room 202', 'Excellent','Science');



CREATE TABLE orders(
  o_id INT ,
  store_id int,  
  state_id int,
  o_date DATE,
  o_value int,
  PRIMARY KEY (o_id)
);




INSERT INTO orders (o_id, store_id, state_id, o_date, o_value)
VALUES
(1, 1, 1, '2023-09-23', 100),
(2, 1, 2, '2023-09-24', 200),
(3, 2, 1, '2023-09-25', 300),
(4, 2, 3, '2023-09-26', 400),
(5, 3, 1, '2023-09-27', 500),
(6, 3, 2, '2023-09-28', 600),
(7, 4, 3, '2023-09-29', 700),
(8, 4, 1, '2023-09-30', 800),
(9, 5, 1, '2023-10-01', 900),
(10, 5, 2, '2023-10-02', 1000),
(11, 1, 3, '2023-10-03', 1100),
(12, 2, 1, '2023-10-04', 1200),
(13, 3, 2, '2023-10-05', 1300),
(14, 4, 3, '2023-10-06', 1400),
(15, 5, 1, '2023-10-07', 1500),
(16, 1, 2, '2023-10-08', 1600),
(17, 2, 3, '2023-10-09', 1700),
(18, 3, 1, '2023-10-10', 1800),
(19, 4, 2, '2023-10-11', 1900),
(20, 5, 3, '2023-10-12', 2000);
