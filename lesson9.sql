DROP TABLE IF EXISTS employees;
-- Create the employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT CHECK (age >= 18)
);

SELECT * FROM employees;

-- Insert data into employees table
INSERT INTO employees (first_name, last_name, department, salary, joining_date, age) VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);

--Q.1-Retrive all employee first name and their department
SELECT first_name,department FROM employees;

--Q.2 -Increase the salary of employees of IT department increase it by 10%

--0.1=10% sql
UPDATE employees
SET salary=salary+(salary*0.1)
WHERE department='IT';
SELECT * FROM employees;

--Q.3 Delete all employee whose age is greater then 34.
DELETE FROM employees
WHERE age>34;

--Q.4 Add column named email.
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

SELECT * FROM employees;

--Q.5-Rename the department column to dept_name.
ALTER TABLE employees
RENAME COLUMN department TO dept_name;

SELECT * FROM employees;

--Q.6 Retrive the names of employees who joined after january 1,2021.
SELECT first_name,last_name,joining_date FROM employees
WHERE joining_date > '2021-01-01';

SELECT * FROM employees;

--Q.7 Alter datatype of salary column to 'integer'.
ALTER TABLE employees
ALTER COLUMN salary TYPE INTEGER;

SELECT * FROM employees;

--Q.8 list all employees with their age and salary in descending order.
SELECT first_name,age,salary FROM employees ORDER BY salary DESC;


--Q.9 insert new employee.
INSERT INTO employees(first_name,last_name,dept_name,salary,joining_date,age)
VALUES ('Anuj','Sharma','Development',70000,'2023-02-10',21);
SELECT * FROM employees;


--Q.10 increase age of all employees by one.
UPDATE employees
SET age=age+1;

SELECT * FROM employees;
