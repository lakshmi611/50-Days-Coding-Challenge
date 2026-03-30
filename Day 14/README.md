# 📊SQL Sales Analysis Project

**Day 14**
📌 **Project Overview**

This project is a basic SQL coding challenge focused on analyzing a sales dataset.

It covers fundamental SQL concepts such as:

•	Data retrieval (SELECT)

•	Filtering (WHERE)

•	Sorting (ORDER BY)

•	Unique values (DISTINCT)

•	Aggregations (SUM)
________________________________________

🗂️ **Dataset Description**

Table Name: Sales

Column Name	Description

sale_id	Unique ID for each sale

customer_name	Name of the customer

city	City of the customer

product_name	Product purchased

category	Product category

quantity	Quantity purchased

price	Price per unit

sale_date	Date of sale
________________________________________
🛠️ **SQL Setup**

🔹 *Create Table*

CREATE TABLE Sales (

 sale_id INT PRIMARY KEY,
 
 customer_name VARCHAR(50),
 
 city VARCHAR(50),
 
 product_name VARCHAR(50),
 
 category VARCHAR(50),
 
 quantity INT,
 
 price DECIMAL(10,2),
 
 sale_date DATE

);

🔹 *Insert Data*

INSERT INTO Sales VALUES

(1, 'Ravi', 'Bangalore', 'Laptop', 'Electronics', 1, 60000, '2023-06-01'),

(2, 'Priya', 'Chennai', 'Mobile', 'Electronics', 2, 20000, '2023-06-03'),

(3, 'Amit', 'Delhi', 'Headphones', 'Accessories', 3, 2000, '2023-06-05'),

(4, 'Neha', 'Mumbai', 'Chair', 'Furniture', 2, 5000, '2023-06-07'),

(5, 'Ravi', 'Bangalore', 'Mobile', 'Electronics', 1, 20000, '2023-06-10'),

(6, 'Priya', 'Chennai', 'Laptop', 'Electronics', 1, 60000, '2023-06-12'),

(7, 'Amit', 'Delhi', 'Chair', 'Furniture', 4, 5000, '2023-06-15'),

(8, 'Neha', 'Mumbai', 'Headphones', 'Accessories', 2, 2000, '2023-06-18');

________________________________________

❓ **SQL Queries & Solutions**

✅ Q1: Show all records

SELECT * FROM Sales;

✅ Q2: Display customer names and cities

SELECT customer_name, city FROM Sales;

✅ Q3: Show product name and price

SELECT product_name, price FROM Sales;

✅ Q4: Show sales from Bangalore

SELECT * FROM Sales WHERE city = 'Bangalore';

✅ Q5: Products in Electronics category

SELECT * FROM Sales WHERE category = 'Electronics';

✅ Q6: Sales with price > 10,000

SELECT * FROM Sales WHERE price > 10000;

✅ Q7: Sales with quantity > 2

SELECT * FROM Sales WHERE quantity > 2;

✅ Q8: Sort by price (ascending)

SELECT * FROM Sales ORDER BY price ASC;

✅ Q9: Sort by quantity (descending)

SELECT * FROM Sales ORDER BY quantity DESC;

✅ Q10: Unique cities

SELECT DISTINCT city FROM Sales;

________________________________________

📈 **Key Insights**

•	Electronics products contribute significantly to total sales.

•	Bangalore and Chennai show repeated customer purchases.

•	High-value transactions are mainly from Laptop and Mobile sales.

•	Furniture sales involve higher quantities but lower unit price.

________________________________________

📁 **Project Structure**

SQL-Sales-Analysis/

│── Sales_Analysis.sql

│── README.md

________________________________________

🧑‍💻 **Tools Used**

•	SQL (MySQL / SQL Server)

•	MySQL Workbench / SQL Server Management Studio

________________________________________

⭐ **Conclusion**

This project demonstrates a strong understanding of SQL fundamentals and serves as a foundation for advanced data analysis and reporting.

________________________________________

