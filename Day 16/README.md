# 📊 Customer Segmentation using SQL

## 📌 Project Overview

This project focuses on analyzing customer data and segmenting customers based on their spending behavior using SQL.

The objective is to apply fundamental SQL concepts such as filtering, aggregation, grouping, and conditional logic to derive meaningful business insights.

---

## 🗂 Dataset Information

### Table: `customers`

| Column Name      | Description                        |

| ---------------- | ---------------------------------- |

| customer_id      | Unique ID for each customer        |

| customer_name    | Name of the customer               |

| city             | Customer's city                    |

| age              | Age of the customer                |

| total_spent      | Total amount spent by the customer |

| number_of_orders | Total number of orders placed      |

---

## 🏗 Table Creation

```sql

CREATE TABLE customers (

  customer_id INT,

  customer_name VARCHAR(50),

  city VARCHAR(50),

  age INT,

  total_spent DECIMAL(10,2),

  number_of_orders INT

);

```

---

## 📥 Sample Data

```sql

INSERT INTO customers VALUES

(1, 'Amit', 'Bangalore', 25, 12000, 5),

(2, 'Neha', 'Mumbai', 30, 45000, 12),

(3, 'Raj', 'Delhi', 22, 8000, 3),

(4, 'Sneha', 'Bangalore', 28, 60000, 15),

(5, 'Karan', 'Mumbai', 35, 20000, 7),

(6, 'Pooja', 'Delhi', 27, 15000, 6),

(7, 'Arjun', 'Bangalore', 40, 70000, 20),

(8, 'Meera', 'Mumbai', 23, 5000, 2);

```

---

## 🔍 SQL Tasks & Solutions

### 🟢 Level 1: Basic Filtering

```sql

-- Customers from Bangalore

SELECT * FROM customers WHERE city = 'Bangalore';

-- Customers with spending > 20000

SELECT * FROM customers WHERE total_spent > 20000;


-- Customers aged between 25 and 35

SELECT * FROM customers WHERE age BETWEEN 25 AND 35;

```

---

### 🟡 Level 2: Sorting & Aggregation

```sql

-- Sort by highest spending

SELECT * FROM customers ORDER BY total_spent DESC;

-- Total revenue

SELECT SUM(total_spent) AS total_revenue FROM customers;

-- Average spending

SELECT AVG(total_spent) AS avg_spending FROM customers;

```

---

### 🔵 Level 3: Grouping

```sql

-- Total spending per city

SELECT city, SUM(total_spent) AS total_spending

FROM customers

GROUP BY city;

-- Customer count per city

SELECT city, COUNT(*) AS customer_count

FROM customers

GROUP BY city;

```

---

### 🔴 Level 4: Customer Segmentation (Core Task)

```sql

SELECT 

  CASE 

    WHEN total_spent < 10000 THEN 'Low'

    WHEN total_spent BETWEEN 10000 AND 50000 THEN 'Medium'

    ELSE 'High'

  END AS segment,

  COUNT(*) AS customer_count

FROM customers

GROUP BY segment;

```

---

### 🟣 Level 5: HAVING Clause

```sql

SELECT city, SUM(total_spent) AS total_spending

FROM customers

GROUP BY city

HAVING SUM(total_spent) > 50000;

```

---

## 📊 Key Insights

* Bangalore has high-value customers with maximum spending

* A majority of customers fall under the **Medium spending segment**

* High-value customers contribute significantly to total revenue

* Customer distribution varies across cities

---

## 🧠 Concepts Covered

* SELECT, WHERE

* ORDER BY

* GROUP BY

* Aggregate Functions (SUM, AVG, COUNT)

* CASE (Conditional Logic)

* HAVING Clause

---

## 🚀 Conclusion

This project demonstrates how SQL can be used to analyze customer behavior and segment users effectively. These techniques are widely used in real-world scenarios like marketing analysis, customer targeting, and business decision-making.

---

