/*******************************************************************************
   SQL Mastery: Retail Data Analysis Scenarios
   Author: Muhammad Magdy
   Environment: Tested on Programiz Online Editor
   Description: Practice on real-world business logic using Customers and Orders tables.
*******************************************************************************/

-- 1. Filter customers by country and calculate basic order statistics.

-- Filtering customers from USA or UK
SELECT (first_name || ' ' || last_name) AS customer_name, country
FROM Customers
WHERE country IN ('USA', 'UK');

-- Calculating basic statistics: Total count and highest order 
SELECT COUNT(*) AS Total_Orders_Count, 
       MAX(amount) AS Highest_Order_Amount
FROM Orders;

--------------------------------------------------------------------------------

-- 2. Linking tables to understand customer behavior and purchase frequency.

-- Linking customers with their orders
SELECT (c.first_name || ' ' || c.last_name) AS customer_name, o.amount, o.item
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id;

-- Counting orders per customer using LEFT JOIN 
SELECT (c.first_name || ' ' || c.last_name) AS customer_name,
        COUNT(o.order_id) AS orders_count
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

-- Identifying Inactive Customers (zero orders) 
SELECT (c.first_name || ' ' || c.last_name) AS customer_name
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

--------------------------------------------------------------------------------

-- 3.Using Subqueries and Complex Filtering for deeper insights.

-- Finding orders higher than the average amount 
SELECT order_id, amount
FROM Orders
WHERE amount > (SELECT AVG(amount) FROM Orders);

-- Identifying countries with more than 2 customers
SELECT country, COUNT(customer_id) AS total_customers
FROM Customers
GROUP BY country
HAVING COUNT(customer_id) > 2;