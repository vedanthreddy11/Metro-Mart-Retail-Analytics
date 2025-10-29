select store_id,round(sum(quantity * unit_price))as total_sales
from stores as s inner join customers as c on s.region=c.region
inner join orders as o on o.customer_id=c.customer_id
group by store_id