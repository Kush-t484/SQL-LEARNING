DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10, 2),
    quantity INT,
    added_date DATE,
    discount_rate NUMERIC(5, 2)
);

INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate) VALUES
('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
('Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.00),
('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);


SELECT * FROM products; 

--Show total quantity available of all products using SUM operator.
SELECT SUM(quantity) AS total_quantity FROM products;

--show total quantity of electronics products.
SELECT SUM(quantity) AS electonics_quantity FROM products WHERE category='Electronics';


--show total quantity of electronics products whose price is greater then 20thousand using AND operator.
SELECT SUM(quantity) AS electonics_quantity FROM products WHERE category='Electronics' and price>20000;

--show total number of products available.
SELECT COUNT(*) FROM products AS total_products;

--find the quantity of products which names contain "phone" word.
SELECT COUNT(*) FROM products AS total_phones WHERE product_name LIKE '%phone%';

--find average price of all the products using AVG operator.
SELECT AVG(price) FROM products AS Average_price;

--find average price of electronics products.
SELECT AVG(price) FROM products AS Average_price WHERE category='Electronics';

--find average price of accesorries products.
SELECT AVG(price) FROM products AS Average_price WHERE category='Accessories';

--find the average price of accessories added after february 2024 using OR function.
SELECT AVG(price) FROM products AS Average_price WHERE category='Accessories' OR added_date>'2024-02-01';

--find the maximum and minimum price of the products USING MAX and MIN operator.
SELECT MAX(price) AS max_price,
		MIN(price) AS min_price
		FROM products;




