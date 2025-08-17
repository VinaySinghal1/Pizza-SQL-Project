use pizzahut;
-- Join the necessary tables to find the total quantity of each pizza ordered.
SELECT
  pizza_types.category,sum(orders_details.quantity) as 'qunatity'
FROM
  orders_details
JOIN
  pizzas ON pizzas.pizza_id= orders_details.pizza_id
join
  pizza_types on pizzas.pizza_type_id=pizza_types.pizza_type_id
  group by pizza_types.category
  order by  sum(orders_details.quantity) desc;
  
  
--   Determine the distribution of orders by hour of the day.
  select hour(order_time),count(order_id) from orders
  group by hour(order_time);
  
-- Join relevant tables to find the category-wise distribution of pizzas.
select category,count(name) from pizza_types
group by category;

-- Group the orders by date and calculate the average number of pizzas ordered per day.
SELECT 
    round(avg(quantity),0) AS avg_quantity_per_day
FROM (
    SELECT 
        o.order_date,
        SUM(od.quantity) AS quantity
    FROM orders o
    JOIN orders_details od 
        ON o.order_id = od.order_id
    GROUP BY o.order_date
) AS order_quantity;

-- Determine the top 3 most ordered pizza types based on revenue.
select pizza_types.name,
round(sum(orders_details.quantity*pizzas.price),0) as 'revenue'
from pizza_types
join
pizzas on pizza_types.pizza_type_id=pizzas.pizza_type_id
join
orders_details on pizzas.pizza_id=orders_details.pizza_id
group by pizza_types.name
order by sum(orders_details.quantity*pizzas.price)
limit 3;




  