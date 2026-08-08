-- Sales Data Analysis
-- SQL queries for analyzing sales data


-- 1. Display all sales
SELECT *
FROM sales;


-- 2. Calculate total revenue
SELECT SUM(price * quantity) AS total_revenue
FROM sales;


-- 3. Calculate revenue by product
SELECT 
    product,
    SUM(price * quantity) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;


-- 4. Calculate revenue by category
SELECT 
    category,
    SUM(price * quantity) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC;


-- 5. Find the best-selling products by quantity
SELECT 
    product,
    SUM(quantity) AS units_sold
FROM sales
GROUP BY product
ORDER BY units_sold DESC;


-- 6. Calculate average transaction value
SELECT 
    AVG(price * quantity) AS average_transaction_value
FROM sales;


-- 7. Find the highest-value transaction
SELECT 
    product,
    price,
    quantity,
    price * quantity AS transaction_value
FROM sales
ORDER BY transaction_value DESC
LIMIT 1;


-- 8. Calculate revenue by month
SELECT 
    SUBSTR(date, 1, 7) AS month,
    SUM(price * quantity) AS revenue
FROM sales
GROUP BY month
ORDER BY month;
