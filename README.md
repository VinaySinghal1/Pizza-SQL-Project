🍕 Pizza SQL Project
📌 Introduction

This project demonstrates the use of SQL joins to analyze pizza sales data.
The goal is to explore how different tables in a database can be combined using JOIN operations to generate meaningful insights such as category-wise sales, revenue contribution, and order analysis.

🗄️ Database Schema

The project uses the following tables:

pizza_types → Contains pizza categories and names.

pizzas → Contains pizza details such as size and price.

orders → Contains order details (date and time).

orders_details → Contains quantity of each pizza in each order.

Example Relationship

pizza_types.pizza_type_id = pizzas.pizza_type_id

pizzas.pizza_id = orders_details.pizza_id

orders.order_id = orders_details.order_id

🔗 SQL Concepts Used

INNER JOIN → To combine pizzas with their categories.

LEFT JOIN → To include orders even if some details are missing.

Aggregate Functions → SUM(), COUNT(), ROUND().

GROUP BY & ORDER BY → To organize and rank results.

Subqueries → For calculating percentage contributions.

🚀 How to Run

Import the SQL dataset into your database (MySQL / PostgreSQL / SQLite).

Run the queries from pizza_queries.sql.

Explore different joins and aggregations to analyze sales.

📈 Key Insights

Which pizza category contributes most to sales.

Revenue distribution across different pizza sizes.

Order patterns over time.
