select avg(quantity * selling_price)as average_order_value
from orders as o inner join products as p on p.product_id = o.product_id


