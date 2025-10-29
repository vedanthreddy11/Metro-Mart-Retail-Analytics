SELECT 
    MONTHNAME(order_date) AS month_name,
    DAYNAME(order_date) AS day_name,
    SUM(quantity * unit_price) AS total_sales
FROM orders
GROUP BY month_name, day_name
ORDER BY FIELD(month_name, 'January','February','March','April','May','June','July','August','September','October','November','December'),
         FIELD(day_name, 'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday');
