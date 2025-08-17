# 🍕 Pizza SQL Project

## 📌 Overview
This project demonstrates how to use **SQL JOINs** to analyze pizza sales data.  
By combining multiple tables, we can extract meaningful insights such as category-wise revenue, sales distribution, and order trends.

## 🗄️ Database Schema
- **pizza_types** → Pizza categories and names  
- **pizzas** → Pizza details (size, price)  
- **orders** → Order information (date, time)  
- **orders_details** → Quantity of each pizza in each order  

**Relationships:**
- `pizza_types.pizza_type_id = pizzas.pizza_type_id`  
- `pizzas.pizza_id = orders_details.pizza_id`  
- `orders.order_id = orders_details.order_id`  

## 🔗 SQL Concepts Used
- `INNER JOIN`, `LEFT JOIN`  
- Aggregations: `SUM()`, `COUNT()`, `ROUND()`  
- `GROUP BY`, `ORDER BY`  
- Subqueries
- 🚀 How to Run

## 🚀 How to Run
1. Import the dataset into **MySQL / PostgreSQL / SQLite**.  
2. Run the queries from **`pizza_queries.sql`**.  
3. Analyze the results and generate insights.  

## 📈 Key Insights
- 🍕 Top-selling pizza categories  
- 💰 Revenue distribution by pizza size  
- ⏳ Order patterns and trends  



