select month(order_date)as month,SUM(quantity * selling_price) as total_revenue
from orders as o inner join products as p on p.product_id = o.product_id
group by month;

