

select dayname(order_date) as day,count(distinct order_id)as no_of_orders,sum(quantity * selling_price)as revenue
 from orders as o
 inner join products as p on o.product_id = p.product_id
group by dayname(order_date)
order by  dayname(order_date)