# 📊 Customer Orders Analysis (SQL JOIN Project)

## 📌 Project Overview

This project analyzes customer purchases, orders, and payments using SQL JOIN operations.

It demonstrates how to combine data from multiple tables to extract meaningful business insights.

---

## 🧱 Database Setup

### 🔹 Create Database

```sql

CREATE DATABASE ecommerce;

USE ecommerce;

```

---

## 🗂️ Tables Used

### 1. Customers Table

Stores customer details

```sql

CREATE TABLE customers (

    customer_id INT PRIMARY KEY,

    customer_name VARCHAR(100),

    city VARCHAR(50)

);

```

---

### 2. Orders Table

Stores customer orders

```sql

CREATE TABLE orders (

    order_id INT PRIMARY KEY,

    customer_id INT,

    order_date DATE,

    amount DECIMAL(10,2)

);

```

---

### 3. Payments Table

Stores payment details

```sql

CREATE TABLE payments (

    payment_id INT PRIMARY KEY,

    order_id INT,

    payment_status VARCHAR(20)

);

```

---

## 🔗 Table Relationships

* `customers.customer_id` → `orders.customer_id`

* `orders.order_id` → `payments.order_id`

---

## 📥 Sample Data

### Customers

```sql

INSERT INTO customers VALUES

(1, 'Amit', 'Bangalore'),

(2, 'Sneha', 'Mumbai'),

(3, 'Rahul', 'Delhi'),

(4, 'Priya', 'Chennai');

```

### Orders

```sql

INSERT INTO orders VALUES

(101, 1, '2024-01-10', 500),

(102, 1, '2024-02-15', 700),

(103, 2, '2024-03-01', 300),

(104, 5, '2024-03-05', 900);

```

### Payments

```sql

INSERT INTO payments VALUES

(1, 101, 'Completed'),

(2, 102, 'Pending'),

(3, 103, 'Completed');

```

---

## 🚀 SQL Queries & Solutions

### ✅ Task 1: Customer Orders (INNER JOIN)

```sql

SELECT c.customer_name, o.order_id, o.amount

FROM customers c

INNER JOIN orders o

ON c.customer_id = o.customer_id;

```

---

### ✅ Task 2: All Customers (LEFT JOIN)

```sql

SELECT c.customer_name, o.order_id

FROM customers c

LEFT JOIN orders o

ON c.customer_id = o.customer_id;

```

---

### ✅ Task 3: Invalid Orders

```sql

SELECT o.*

FROM orders o

LEFT JOIN customers c

ON o.customer_id = c.customer_id

WHERE c.customer_id IS NULL;

```

---

### ✅ Task 4: Order Payment Status

```sql

SELECT c.customer_name, o.order_id, p.payment_status

FROM orders o

LEFT JOIN customers c ON o.customer_id = c.customer_id

LEFT JOIN payments p ON o.order_id = p.order_id;

```

---

### ✅ Task 5: Customers Without Orders

```sql

SELECT c.customer_name

FROM customers c

LEFT JOIN orders o

ON c.customer_id = o.customer_id

WHERE o.order_id IS NULL;

```

---

### ✅ Task 6: Orders Without Payment

```sql

SELECT o.order_id

FROM orders o

LEFT JOIN payments p

ON o.order_id = p.order_id

WHERE p.payment_id IS NULL;

```

---

### ✅ Task 7: Total Spending Per Customer

```sql

SELECT c.customer_name, SUM(o.amount) AS total_spent

FROM customers c

JOIN orders o

ON c.customer_id = o.customer_id

GROUP BY c.customer_name;

```

---

### ✅ Task 8: Fully Paid Customers

```sql

SELECT c.customer_name

FROM customers c

JOIN orders o ON c.customer_id = o.customer_id

LEFT JOIN payments p ON o.order_id = p.order_id

GROUP BY c.customer_name

HAVING COUNT(*) = COUNT(CASE 

    WHEN p.payment_status = 'Completed' THEN 1 

END);


```

---

### ✅ Task 9: Highest Order Per Customer

```sql

SELECT c.customer_name, MAX(o.amount) AS highest_order

FROM customers c

JOIN orders o

ON c.customer_id = o.customer_id

GROUP BY c.customer_name;

```

---

### ✅ Task 10: Top 2 Customers

```sql

SELECT c.customer_name, SUM(o.amount) AS total_spent

FROM customers c

JOIN orders o

ON c.customer_id = o.customer_id

GROUP BY c.customer_name

ORDER BY total_spent DESC

LIMIT 2;

```

---

## 📊 Key Concepts Used

* INNER JOIN

* LEFT JOIN

* GROUP BY

* Aggregate Functions (SUM, MAX)

* NULL Handling

* Data Analysis using SQL

---

## 💡 Key Insights

* Some orders may not have valid customers (data inconsistency)

* Not all orders are paid

* Some customers never placed orders

* Top customers contribute most revenue

---

## 🛠️ Tools Used

MySQL

---

## 📌 Conclusion

This project demonstrates how SQL JOINs can be used to analyze relational data and generate actionable business insights.

---
