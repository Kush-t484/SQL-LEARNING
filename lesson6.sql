CREATE TABLE employee2(
	employee_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	POSITION VARCHAR(50),
	DEPARTMENT VARCHAR(50),
	HIRE_DATE DATE,
	SALARY NUMERIC(10,2)
);

SELECT * FROM employee2;
INSERT INTO employee2(employee_id,name,position,department,hire_date,salary)
	VALUES (101,'KUSHAL SEN','DATA ENGINEER','GOOGLE','13-07-2023',150000.00),
		(102,'rahul sharma','data analyst','accenture','12-04-2022',75000.00),
		(103,'mukesh dutt','software developer','phonepe','14-02-2020',65000.00);

-- deleteing specific row using where command
DELETE FROM employee2
WHERE employee_id=103;
-- deleteing specific column using drop command
ALTER TABLE employee2
DROP COLUMN salary;

DROP TABLE IF EXISTS employee2;