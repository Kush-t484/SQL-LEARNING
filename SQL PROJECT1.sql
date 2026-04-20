-- Create Database
CREATE DATABASE OnlineBookstore;

-- Switch to the database
OnlineBookstore;

-- Create Tables
DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT
);
DROP TABLE IF EXISTS customers;
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(150)
);
DROP TABLE IF EXISTS orders;
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10, 2)
);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;


-- Import Data into Books Table
COPY Books(Book_ID, Title, Author, Genre, Published_Year, Price, Stock) 
FROM 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PostgreSQL 18\Books.csv' 
CSV HEADER;

-- Import Data into Customers Table
COPY Customers(Customer_ID, Name, Email, Phone, City, Country) 
FROM 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PostgreSQL 18\Customers.csv' 
CSV HEADER;

-- Import Data into Orders Table
COPY Orders(Order_ID, Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount) 
FROM 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PostgreSQL 18\Orders.csv' 
CSV HEADER;


--1.Retrive all books from the fiction genre.
SELECT * FROM books
WHERE genre='Fiction';

--2.Retrive all books published after 1950.
SELECT * FROM books
WHERE published_year>1950;

--3.List all customers from the canada.
SELECT * FROM Customers
WHERE country='Canada';

--4.Retrive the orders placed in november 2023.
SELECT * FROM Orders
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';

--5.How much total stock available of books.
SELECT SUM(stock) AS total_stock FROM books;

--6.Find the details of most expensive book.
SELECT * FROM Books 
ORDER BY Price DESC
LIMIT 1;

--7.Show all customers who ordered more than 1 quantity of books.
SELECT * FROM Orders
Where quantity>1;


--8.Retrive all orders where total amount exceeds $20.
SELECT * FROM Orders
WHERE total_amount>20;

--9.Retrive all the genre available of books.
SELECT DISTINCT genre FROM books;

--10.Find the book with the lowest stock.
SELECT * FROM books
ORDER BY stock
ASC LIMIT 1;

--11.Find the total revenue generated from books.
SELECT SUM(total_amount) AS Revenue FROM Orders;

--Advance questions.

--1.Retrive the total number of books sold for each genre.
SELECT b.genre,SUM(o.quantity) FROM Orders o JOIN Books b
ON o.book_id=b.book_id GROUP BY b.genre;

--2.Find the average price of books in the ''fantasy'' genre.
SELECT AVG(price) AS Average_price 
FROM Books
WHERE genre='Fantasy';

--3.List Customers who have placed at least 2 orders.
SELECT o.customer_id,c.name,COUNT(o.order_id) AS order_count 
FROM Orders O JOIN Customers c ON o.customer_id=c.customer_id
GROUP BY o.customer_id,c.name
HAVING COUNT(order_id)>=2;

--4.Find the most frequently ordered book.
SELECT o.book_id,b.title,COUNT(o.order_id) AS ORDER_COUNT
FROM Orders o JOIN Books b ON o.book_id=b.book_id
GROUP BY o.book_id,b.title
ORDER BY ORDER_COUNT DESC LIMIT 1;

--5.Show the top 3 expensive books of 'Fantasy' Genre.
SELECT * FROM books
WHERE genre='Fantasy'
ORDER BY price DESC LIMIT 3;

--6.Retrive the total quantity of books sold for each author.
SELECT b.author,SUM(o.quantity) 
FROM books b JOIN Orders o
ON o.book_id = b.book_id
GROUP BY author;

--7.Select the cities where customers spend more than $30.
SELECT DISTINCT c.city,o.total_amount
FROM customers c JOIN Orders o ON c.customer_id=o.customer_id
WHERE O.total_amount>30;

--8.Find the customer who spents the most on orders.
SELECT c.customer_id,c.name, SUM(o.total_amount) AS total_spent
FROM customers c JOIN Orders o ON c.customer_id=o.customer_id
GROUP BY c.customer_id,c.name
ORDER BY total_spent DESC LIMIT 1;

--9.Calculate the stock remaining after fulfilling all orders.
SELECT b.book_id,b.title,b.stock ,COALESCE(SUM(o.quantity),0) AS order_quantity,
b.stock-COALESCE(SUM(o.quantity),0) AS remaining_quantity
FROM Books b LEFT JOIN Orders o ON b.book_id=o.book_id
GROUP BY b.book_id;



















