SELECT c_category name,
count (p.product_id) AS total_products
FROM category c
JOIN product p
ON c.category_id = p.product_id
GROUP BY c.

--------------------BASIC SQL QUERIES-------------------

-------------------------1-----------------

SELECT * FROM Sales

--------------------------2-------------

SELECT product_name FROM products

-----------------------------3-------------

SELECT *
FROM sales
LIMIT 10

----------------------------4-----------------

SELECT DISTINCT category
FROM category

-----------------------------5-----------

SELECT *
FROM stores
WHERE country = 'Canada';

---------------------Filtering Data------------------

-----------------------1--------------

SELECT *
FROM sales
WHERE sale_date > '2023-01-01';

-------------------------2---------------------

SELECT price
FROM products
WHERE price > 500;

-------------------------3-----------------

SELECT *
FROM warranty
WHERE status = "Warranty Void";
