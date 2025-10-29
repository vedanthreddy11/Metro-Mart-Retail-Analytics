
select * from orders
select * from products
select * from customers
select * from stores
select * from campaigns

select dayname(order_date) as day,count(distinct order_id) as no_of_orders from orders
group by dayname(order_date)
order by  dayname(order_date)