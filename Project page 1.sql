use pizzahut;
-- Retrieve the total number of orders placed.
select count(order_id) as 'total number of order place' from orders;

-- Calculate the total revenue generated from pizza sales.
SELECT
  SUM(orders_details.quantity * pizzas.price)
FROM
  orders_details
JOIN
  pizzas ON orders_details.pizza_id = pizzas.pizza_id;

-- Identify the highest-priced pizza.
-- select max(price) as "Max price " from pizzas;

SELECT
  pizza_types.name,pizzas.price
FROM
  pizza_types
JOIN
  pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
  order by pizzas.price desc 
  limit 1;
  
--   Identify the most common pizza size ordered.
SELECT
  pizzas.size,count(orders_details.order_details_id) as 'Maximum time order'
FROM
  pizzas
JOIN
  orders_details ON pizzas.pizza_id = orders_details.pizza_id
  group by pizzas.size
  order by count(orders_details.order_details_id) desc
  limit 1;
  
-- List the top 5 most ordered pizza types along with their quantities.
SELECT
  pizza_types.name,sum(orders_details.quantity)
FROM
  orders_details
JOIN
  pizzas ON pizzas.pizza_id= orders_details.pizza_id
join
  pizza_types on pizzas.pizza_type_id=pizza_types.pizza_type_id
  group by pizza_types.name
  order by  sum(orders_details.quantity) desc
  limit 5;
  
  
  
  

