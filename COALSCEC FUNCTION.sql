SELECT * FROM products;

ALTER TABLE products ADD COLUMN discount_price NUMERIC(10,2);

UPDATE products
SET discount_price=Null
WHERE product_name IN('Laptop','Desk');

UPDATE products
SET discount_price=price*0.9
WHERE product_name NOT IN('Laptop','Desk');

SELECT product_name,price,discount_price FROM products;

--applying COALESCE function=it is used to combine two columns due to which two columns get mixed which results in filling of 
--empty values in the table.
SELECT product_name,
COALESCE (discount_price,price) AS Final_price
FROM products;

ALTER TABLE products
DROP COLUMN discount_price;

--assign a unique row number to each product based on category.
SELECT product_name,category,price,
DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC) AS row_num
FROM products;







