# Online-Food-Delivery-SQL-Project
To analyze food delivery data using SQL and derive business insights like restaurant performance, customer loyalty, and order trends.

# Tools Used:
•	MySQL Workbench
•	SQL
•	Dataset: Customers, Restaurants, Orders, Ratings
# Database Schema:

# Tables & Columns:
## Customers
•	CustomerID (PK)
•	CustomerName
•	Email
## Restaurants
•	RestaurantID (PK)
•	Name
•	Cuisine
## Orders
•	OrderID (PK)
•	CustomerID (FK)
•	RestaurantID (FK)
•	OrderDate
•	Amount
## Ratings
•	RatingID (PK)
•	CustomerID (FK)
•	RestaurantID (FK)
•	Score (1–5)

# Data Inserted:
(From your SQL INSERTs, will include examples)

# Data Exploration with SQL
## Restaurant Performance
•	Top restaurants by TotalOrders and revenue:
•	Using AVG() to calculate average restaurant ratings
## Customer Loyalty
•	Customers who ordered multiple times:
•	Loyalty ranking using RANK(),DENSE_RANK():
## Order Trends
•	Most popular order days Using GROUP BY and ORDER BY:






