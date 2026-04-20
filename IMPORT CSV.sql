DROP TABLE IF EXISTS employee2;
-- Create the employees table
CREATE TABLE employee2(
 employee_id	SERIAL PRIMARY KEY,
first_name	VARCHAR(50) NOT NULL,
last_name	VARCHAR(50) NOT NULL,
email	VARCHAR(50) ,
department	VARCHAR(50),
salary	DECIMAL (10,2),
joining_date	DATE,
age	INT
);

SELECT * FROM employee2;

COPY
employee2(employee_id,first_name,last_name,email,department,salary,joining_date,age)
FROM 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PostgreSQL 18\employee_data.csv'
DELIMITER','
CSV HEADER;
