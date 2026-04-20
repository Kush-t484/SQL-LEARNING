SELECT * FROM employee2;

--retrive all employees whose age is equal to 30.

SELECT * FROM employee2
WHERE age=30;

--retrive firstname and age of those employees whose age is not equal to 30.

SELECT first_name,age FROM employee2
WHERE age!=0;

--retrive first name and salary of all employees whose salary is greater then 50thousand.
SELECT first_name,salary FROM employee2
WHERE salary>50000;

--less then 50thousand.
SELECT first_name,salary FROM employee2
WHERE salary<50000;
