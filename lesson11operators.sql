SELECT * FROM employee2;

--arithmetic operators

--Retrive first name,salary and calculate 10% bonus in salary.
SELECT first_name,salary,(salary*0.10) AS Bonus FROM employee2;

--claculating new salary.
SELECT first_name,last_name,salary,
(salary*12) AS annual_salary,
(salary*0.05) AS increment_salary,
(salary+salary*0.05) AS new_salary,
(salary*1.05) AS new_salary2
FROM employee2;

--comparison operators

