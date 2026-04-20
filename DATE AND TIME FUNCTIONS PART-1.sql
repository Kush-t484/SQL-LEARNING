SELECT * FROM products;

-- 1.NOW() = USED TO GET CURRENT DATE AND TIME.
SELECT NOW() AS CURRENT_DATE_TIME;

--2.CURRENT_DATE = USED TO GET CURRENT DATE.
SELECT CURRENT_DATE AS today_date;

--3.SHOW DIFFRENCE BETWEEN ADDED AND CURRENT DATE.
SELECT CURRENT_DATE,added_date,(current_date-added_date) AS days_difference FROM products;

--4.extract year USING EXTRACT() function.
--extract year,month and day from added_date as year_date,month_date,day_date.
SELECT product_name,EXTRACT (YEAR FROM added_date) AS year_date ,
EXTRACT (MONTH FROM added_date) AS month_date, 
EXTRACT (DAY FROM added_date) AS day_date FROM products;

--5.AGE() used to find diffrences between two dates.
--find gap between added date and current date.
SELECT product_name,AGE(added_date,current_date) AS date_diffrence FROM products;

--6.TO_CHAR()=Used to change dates into strings.
--change the added_date into string as format(DD-Mon-YYYY).

SELECT product_name,TO_CHAR(added_date,'DD-Month-YYYY') AS formatted_date FROM products;

--7.DATE_PART()-Get specific date part
--extract the day of the week from added date
SELECT product_name,added_date,DATE_PART('dow',added_date) AS day_of_week FROM products;

--8.DATE_TRUNC()=Truncate added date to the precision
--Truncate added date to the start of the month.
SELECT product_name,added_date,DATE_TRUNC('week',added_date) AS start_date,
DATE_PART('dow',added_date) AS day_of_week FROM products;

--9.INTERVAL=helps to subtract or add time intervals.
--add 6 months to the added_date.
SELECT product_name,added_date,added_date + INTERVAL '6 MONTHS' AS new_date FROM products;

--10.CURRENT_TIME=used to get current time.
--it gives us current time.
SELECT CURRENT_TIME as time_now;

--11.TO_DATE()=convert string into date.
--used to convert string date in given date format.
SELECT TO_DATE('22-04-2025','DD-MM-YYYY') AS date_of;



