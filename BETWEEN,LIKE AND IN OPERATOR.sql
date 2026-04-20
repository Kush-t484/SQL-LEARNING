SELECT * FROM employee2;

--retrive first name, last name,salary of all employees whose salary is between 40 to 60 thousand BETWEEN
SELECT first_name,last_name,salary FROM employee2
WHERE salary BETWEEN 40000 AND 60000;

-- find employees whose gmail ends with @gmail.com LIKE
SELECT first_name,last_name,email FROM employee2
WHERE email LIKE '%@gmail.com';

--find employees whose names starts with  a or ends with a ,contains a .
SELECT first_name FROM employee2
WHERE first_name LIKE 'A%';

SELECT first_name FROM employee2
WHERE first_name LIKE '%a';

SELECT first_name FROM employee2
WHERE first_name LIKE '%a%';

--retrive employees who belong to finance or marketing department. IN
SELECT first_name,department FROM employee2
WHERE department IN ('Finance','Marketing');



