select sub_category as product_name,sum(quantity)as least_selling from orders as o inner join 
products as p on o.product_id=p.product_id
group by sub_category
order by sum(quantity) asc
limit 1;