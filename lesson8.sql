-- Drop the table if it already exists
DROP TABLE IF EXISTS users;

-- Create the users table
CREATE TABLE IF NOT EXISTS users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    age INT CHECK(age>=18),
    city VARCHAR(50)
);


SELECT * FROM users;

-- Insert 5 sample users into the users table
INSERT INTO users (username, email, age, city) 
VALUES('Rajesh', 'rajesh@gmail.com', 25, 'Mumbai'),
('Priya', 'priya@yahoo.com', 30, 'Delhi'),
('Ankit', 'ankit@gmail.com', 28, 'Bangalore'),
('Sneha', 'sneha@hotmail.com', 35, 'Pune'),
('Vikram', 'vikram@gmail.com', 22, 'Hyderabad');

--selecting specific columns
--SELECT username,user_id,age FROM users;

--Updateing the age of rajesh
UPDATE users
SET age = 26
WHERE username='Rajesh';

-- Displaying the table in ascending order
SELECT * FROM users ORDER BY user_id ASC;

--updating the city to chennai of whose age is greater then or equal to 30
UPDATE users
SET city='Chennai'
WHERE age>=30;

--updating the age and city of priya
Update users
set city='kolkata',age=31
where username='Priya';

--increasing the age by 1 whose gmail includes @gmail.com
UPDATE  users
set age=age+1
where email like '%@gmail.com';
-- adding data using toolbar
--copy pasting data using toolbar
-- deleteing user id 6 using delete command
DELETE FROM users WHERE user_id=6;
--downloading the data using toolbar
--learning how to use graph visualizer
--learning edit in upper toolbar

--Learning how to alter the table
--Altering the table to rename the username column to full_name
ALTER TABLE users
RENAME COLUMN username TO full_name;

--changing the age column datatype from integer to smallint
ALTER TABLE users
ALTER COLUMN age TYPE SMALLINT;

--adding not null constraint to city column
ALTER TABLE users
ALTER COLUMN city SET NOT NULL;

--dropping the constraint from table
ALTER TABLE users
DROP CONSTRAINT users_age_check;

--adding constraint to the table
ALTER TABLE users
ADD CONSTRAINT age CHECK (age>=18);

INSERT INTO users (full_name, email, age, city) 
VALUES('Rajesh Kumar', 'rajesh21@gmail.com', 19, 'Mumbai');

--altering the table name from users to customers
ALTER TABLE users
RENAME TO customers;

SELECT * FROM customers ORDER BY user_id ASC;




