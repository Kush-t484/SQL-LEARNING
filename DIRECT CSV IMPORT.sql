DROP TABLE IF EXISTS employee3;
-- Create the employees table
CREATE TABLE employee3(
 employee_id	INT PRIMARY KEY,
first_name	VARCHAR(50) NOT NULL,
last_name	VARCHAR(50) NOT NULL,
email	VARCHAR(50) ,
department	VARCHAR(50),
salary	DECIMAL (10,2),
joining_date	DATE,
age	INT
);

SELECT * FROM employee3;