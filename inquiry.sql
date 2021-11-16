select customer.name,customer.phone,sum(orders.price) 
from customer
inner join customer_orders on customer.id = customer_orders.customer_id
inner join orders on customer_orders.order_id = orders.id
group by customer.name,customer.phone
order by sum desc;