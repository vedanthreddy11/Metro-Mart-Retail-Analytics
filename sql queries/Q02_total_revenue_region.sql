select region,sum(quantity * unit_price) as total_revenue
from orders as o inner join customers as c on
o.customer_id = c.customer_id 
group by region;