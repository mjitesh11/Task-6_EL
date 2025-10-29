
-- Sales Trend Analysis: Monthly Revenue & Order Volume
-- Objective: Analyze monthly revenue and order volume using SQL aggregations.

SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    online_sales
WHERE 
    order_date BETWEEN '2023-01-01' AND '2023-12-31'   -- Limit to a specific year
GROUP BY 
    order_year, order_month
ORDER BY 
    order_year, order_month;
