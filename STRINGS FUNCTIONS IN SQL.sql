SELECT * FROM products;

--show all the categories in UPPERCASE using UPPER function.
SELECT UPPER(category) AS category_uppercase FROM products;

--show all the categories in lowercase using LOWER function.
SELECT LOWER(category) AS category_lowercase FROM products;

--cancatenate product and category with hypen '-' using CONCAT function.
SELECT CONCAT(product_name,'-',category) as product_detail FROM products;

--Extract the first five characters f