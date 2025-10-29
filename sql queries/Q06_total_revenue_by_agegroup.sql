select age_group,sum(quantity * selling_price) as revenue from 
products as p inner join orders as o on p.product_id = o.product_id
inner join customers as c on c.customer_id = o.customer_id
group by age_group
order by age_group asc;
