SELECT 
    DAYNAME(order_date) AS day_of_week,
    sum(quantity * unit_price) AS total_revenue
FROM orders o
GROUP BY day_of_week
ORDER BY total_revenue DESC;


