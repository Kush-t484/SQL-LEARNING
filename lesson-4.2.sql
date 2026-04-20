SELECT * FROM employee;

INSERT INTO employee(name,position,department,hire_date,salary)
	VALUES ('KUSHAL SEN','DATA ENGINEER','GOOGLE','13-07-2023',150000.00),
		('rahul sharma','data analyst','accenture','12-04-2022',75000.00),
		('mukesh dutt','software developer','phonepe','14-02-2020',65000.00);

ALTER TABLE employee
RENAME COLUMN positiion to position;
-- Deleting data of table using truncate command
TRUNCATE TABLE employee;
--Deleting data without loss of serial data using restart identity
TRUNCATE TABLE employee RESTART IDENTITY;