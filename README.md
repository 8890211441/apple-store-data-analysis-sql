# Apple-Sales-Analysis
Apple Store Data Analysis using PostgreSQL and SQL. This project includes data exploration, filtering, sorting, joins, aggregations, GROUP BY, subqueries, revenue analysis, sales analysis, warranty claim analysis, and business insights generation from Apple Store datasets.

📊 Apple Store Data Analysis

This project analyzes Apple Store datasets using SQL and PostgreSQL.

Key Concepts Used:
- SELECT, WHERE, ORDER BY
- Aggregate Functions (SUM, COUNT, AVG)
- GROUP BY and HAVING
- INNER JOIN and LEFT JOIN
- Subqueries
- Sales Analysis
- Product Analysis
- Store Performance Analysis
- Warranty Claims Analysis
- Revenue Calculation

The goal of this project is to practice real-world SQL queries and generate business insights from Apple Store data.

1️⃣ Warranty Claims with Product Names


## Warranty Claims with Product Names

Joined warranty, sales, and products tables to identify which products generated warranty claims.

### SQL Concepts Used
- INNER JOIN
- Multi-table Joins
- Foreign Keys

### Business Insight
Helps identify products with higher warranty claim frequencies.


2️⃣ Total Units Sold by Product Category


## Total Units Sold by Product Category

Calculated total units sold for each product category by joining sales and product tables.

### SQL Concepts Used
- INNER JOIN
- SUM()
- GROUP BY

### Business Insight
Identifies the highest-selling product categories.


3️⃣ Unsold Products Analysis


## Unsold Products Analysis

Used LEFT JOIN and NULL filtering to find products that have never been sold.

### SQL Concepts Used
- LEFT JOIN
- NULL Handling
- Data Validation

### Business Insight
Helps identify underperforming products and inventory issues.

Average Price of Products Sold

### Objective
Find the average price of products that have been sold.

### SQL Concepts Used
- Subquery
- AVG()
- IN Operator

### Query

```sql
SELECT AVG(price)
FROM products
WHERE product_id IN (
    SELECT product_id
    FROM sales
);
Business Insight

Calculates the average selling price of products that generated actual sales.

Query 2: Stores with Sales Above Average
Objective

Identify stores whose total sales are greater than the average sales across all stores.

SQL Concepts Used
GROUP BY
COUNT()
HAVING
Subquery
Query
SELECT store_id, COUNT(*) AS total_sales
FROM sales
GROUP BY store_id
HAVING COUNT(*) > (
    SELECT AVG(total_sales)
    FROM (
        SELECT COUNT(*) AS total_sales
        FROM sales
        GROUP BY store_id
    ) x
);
Business Insight

Helps identify high-performing stores that generate above-average sales
