-- 1. Total Sales
SELECT 
    SUM(sales_amount) AS total_sales
FROM sales;

-- 2. Total Orders
SELECT 
    COUNT(DISTINCT order_id) AS total_orders
FROM sales;

-- 3. Total Quantity Sold
SELECT 
    SUM(quantity) AS total_quantity_sold
FROM sales;

-- 4. Average Order Value (AOV)
SELECT 
    SUM(sales_amount) / COUNT(DISTINCT order_id) AS average_order_value
FROM sales;

-- 5. Monthly Sales Trend
SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(sales_amount) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;

-- 6. Top 5 Products by Sales
SELECT 
    product_name,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;

-- 7. Top 3 Regions by Sales
SELECT 
    region,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC
LIMIT 3;

-- 8. Category-wise Sales
SELECT 
    category,
    SUM(sales_amount) AS category_sales
FROM sales
GROUP BY category
ORDER BY category_sales DESC;

-- 9. Customer-wise Total Spend
SELECT 
    customer_id,
    SUM(sales_amount) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC;

-- 10. Repeat Customers Count
SELECT 
    COUNT(*) AS repeat_customers
FROM (
    SELECT customer_id
    FROM sales
    GROUP BY customer_id
    HAVING COUNT(DISTINCT order_id) > 1
) sub;

-- 11. Average Quantity per Order
SELECT 
    AVG(quantity) AS avg_quantity_per_order
FROM sales;

-- 12. Region-wise Monthly Sales
SELECT 
    region,
    DATE_TRUNC('month', order_date) AS month,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY region, month
ORDER BY region, month;

-- 13. Sales Contribution Percentage by Region
SELECT 
    region,
    SUM(sales_amount) AS region_sales,
    ROUND(
        (SUM(sales_amount) * 100.0) / (SELECT SUM(sales_amount) FROM sales),
        2
    ) AS sales_percentage
FROM sales
GROUP BY region
ORDER BY sales_percentage DESC;

-- 14. Highest Selling Product in Each Category
SELECT 
    category,
    product_name,
    SUM(sales_amount) AS total_sales
FROM sales
GROUP BY category, product_name
ORDER BY category, total_sales DESC;

-- 15. Daily Sales Trend
SELECT 
    order_date,
    SUM(sales_amount) AS daily_sales
FROM sales
GROUP BY order_date
ORDER BY order_date;
