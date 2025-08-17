use pizzahut;

-- Calculate the percentage contribution of each pizza type to total revenue.

select pizza_types.category,
sum(orders_details.quantity*pizzas.price) /(SELECT
  SUM(orders_details.quantity * pizzas.price)
FROM
  orders_details
JOIN
  pizzas ON orders_details.pizza_id = pizzas.pizza_id)*100 as 'revenue'
from pizza_types
join
pizzas on pizza_types.pizza_type_id=pizzas.pizza_type_id
join
orders_details on pizzas.pizza_id=orders_details.pizza_id
group by pizza_types.category
order by sum(orders_details.quantity*pizzas.price) desc;

-- Analyze the cumulative revenue generated over time.
select order_date,
sum(revenue) over(order by order_date) as cum_revenue
from
(select orders.order_date,
round(sum(orders_details.quantity*pizzas.price),0) as revenue
from orders
join
orders_details on orders.order_id=orders_details.order_id
join
pizzas on pizzas.pizza_id=orders_details.pizza_id
group by orders.order_date) as sales



