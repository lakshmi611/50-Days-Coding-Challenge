# Packaging Domain SQL Project

## 📦 Production & Sales Analytics using SQL

A complete SQL project based on a packaging company that manufactures and sells:

- Boxes
- Bottles
- Wrappers

This project analyzes:

- Production efficiency
- Defect rates
- Revenue performance
- Profit margins
- Inventory insights

---

# 📌 Project Objective

The goal of this project is to use SQL for business analytics in the packaging industry by:

- Tracking production performance
- Identifying defective products
- Calculating revenue and profits
- Monitoring inventory
- Generating business insights

---

# 🛠️ Technologies Used

- MySQL
- SQL
- MySQL Workbench

---

# 🗂️ Database Name

```sql
CREATE DATABASE packaging_company;
USE packaging_company;
```

---

# 📊 Tables Used

## 1️⃣ Products Table

Stores product information.

| Column Name | Data Type |
|---|---|
| product_id | INT |
| product_name | VARCHAR |
| category | VARCHAR |
| cost_per_unit | DECIMAL |

---

## 2️⃣ Production Table

Stores production details.

| Column Name | Data Type |
|---|---|
| production_id | INT |
| product_id | INT |
| production_date | DATE |
| quantity_produced | INT |
| defective_quantity | INT |

---

## 3️⃣ Sales Table

Stores sales transactions.

| Column Name | Data Type |
|---|---|
| sale_id | INT |
| product_id | INT |
| sale_date | DATE |
| quantity_sold | INT |
| selling_price_per_unit | DECIMAL |

---

# 🧱 Database Schema

```sql
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(20),
    cost_per_unit DECIMAL(10,2)
);

CREATE TABLE production (
    production_id INT PRIMARY KEY,
    product_id INT,
    production_date DATE,
    quantity_produced INT,
    defective_quantity INT,
    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    sale_date DATE,
    quantity_sold INT,
    selling_price_per_unit DECIMAL(10,2),
    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);
```

---

# 📥 Insert Data

```sql
INSERT INTO products VALUES
(1, 'Small Box', 'Box', 10.00),
(2, 'Medium Box', 'Box', 15.00),
(3, 'Large Box', 'Box', 20.00),
(4, 'Plastic Bottle', 'Bottle', 8.00),
(5, 'Glass Bottle', 'Bottle', 12.00),
(6, 'Food Wrapper', 'Wrapper', 2.00),
(7, 'Gift Wrapper', 'Wrapper', 3.00);

INSERT INTO production VALUES
(1, 1, '2026-01-01', 1000, 50),
(2, 2, '2026-01-01', 800, 20),
(3, 3, '2026-01-02', 600, 30),
(4, 4, '2026-01-02', 1200, 60),
(5, 5, '2026-01-03', 700, 10),
(6, 6, '2026-01-03', 2000, 100),
(7, 7, '2026-01-04', 1500, 75),
(8, 1, '2026-02-01', 1100, 40),
(9, 2, '2026-02-02', 900, 25),
(10, 3, '2026-02-03', 650, 35),
(11, 4, '2026-02-03', 1300, 70),
(12, 5, '2026-02-04', 750, 20),
(13, 6, '2026-02-05', 2100, 120),
(14, 7, '2026-02-06', 1600, 80);

INSERT INTO sales VALUES
(1, 1, '2026-01-05', 900, 15.00),
(2, 2, '2026-01-06', 700, 22.00),
(3, 3, '2026-01-07', 500, 30.00),
(4, 4, '2026-01-08', 1000, 12.00),
(5, 5, '2026-01-09', 650, 18.00),
(6, 6, '2026-01-10', 1800, 5.00),
(7, 7, '2026-01-11', 1400, 7.00),
(8, 1, '2026-02-05', 1000, 15.00),
(9, 2, '2026-02-06', 850, 22.00),
(10, 3, '2026-02-07', 600, 30.00),
(11, 4, '2026-02-08', 1100, 12.00),
(12, 5, '2026-02-09', 700, 18.00),
(13, 6, '2026-02-10', 2000, 5.00),
(14, 7, '2026-02-11', 1500, 7.00);
```

---

# 📌 SQL Tasks Performed

## ✅ Task 1 — Defect Rate per Product

```sql
SELECT 
    p.product_name,
    SUM(pr.quantity_produced) AS total_produced,
    SUM(pr.defective_quantity) AS total_defective,
    ROUND(
        SUM(pr.defective_quantity) * 100.0 /
        SUM(pr.quantity_produced),
        2
    ) AS defect_rate_percentage
FROM products p
JOIN production pr
ON p.product_id = pr.product_id
GROUP BY p.product_name;
```

---

## ✅ Task 2 — Top Performing Product by Revenue

```sql
SELECT 
    p.product_name,
    SUM(
        s.quantity_sold *
        s.selling_price_per_unit
    ) AS total_revenue
FROM products p
JOIN sales s
ON p.product_id = s.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC
LIMIT 1;
```

---

## ✅ Task 3 — Monthly Production Trend

```sql
SELECT 
    DATE_FORMAT(production_date, '%Y-%m') AS month,
    SUM(quantity_produced) AS total_production
FROM production
GROUP BY month
ORDER BY month;
```

---

## ✅ Task 4 — Category-wise Profit

```sql
SELECT 
    p.category,
    SUM(
        s.quantity_sold *
        s.selling_price_per_unit
    ) AS total_revenue,
    SUM(
        s.quantity_sold *
        p.cost_per_unit
    ) AS total_cost,
    SUM(
        (s.selling_price_per_unit - p.cost_per_unit)
        * s.quantity_sold
    ) AS total_profit
FROM products p
JOIN sales s
ON p.product_id = s.product_id
GROUP BY p.category;
```

---

## ✅ Task 5 — High Defect Days

```sql
SELECT 
    pr.production_date,
    p.product_name,
    ROUND(
        pr.defective_quantity * 100.0 /
        pr.quantity_produced,
        2
    ) AS defect_rate_percentage
FROM production pr
JOIN products p
ON pr.product_id = p.product_id
WHERE
(
    pr.defective_quantity * 100.0 /
    pr.quantity_produced
) > 5;
```

---

## ✅ Task 6 — Running Total Revenue

```sql
SELECT 
    sale_date,
    SUM(daily_revenue)
    OVER(ORDER BY sale_date)
    AS running_total_revenue
FROM
(
    SELECT 
        sale_date,
        SUM(
            quantity_sold *
            selling_price_per_unit
        ) AS daily_revenue
    FROM sales
    GROUP BY sale_date
) t;
```

---

## ✅ Task 7 — Best Category by Profit Margin

```sql
SELECT 
    p.category,
    ROUND(
        SUM(
            (s.selling_price_per_unit - p.cost_per_unit)
            * s.quantity_sold
        )
        /
        SUM(
            s.quantity_sold *
            s.selling_price_per_unit
        ) * 100,
        2
    ) AS profit_margin_percentage
FROM products p
JOIN sales s
ON p.product_id = s.product_id
GROUP BY p.category
ORDER BY profit_margin_percentage DESC
LIMIT 1;
```

---

## ✅ Task 8 — Unsold Inventory

```sql
SELECT 
    p.product_name,
    SUM(pr.quantity_produced) AS total_produced,
    SUM(s.quantity_sold) AS total_sold,
    SUM(pr.quantity_produced) -
    SUM(s.quantity_sold)
    AS unsold_inventory
FROM products p
JOIN production pr
ON p.product_id = pr.product_id
JOIN sales s
ON p.product_id = s.product_id
GROUP BY p.product_name
HAVING total_produced > total_sold;
```

---

# 📈 SQL Concepts Used

| Concept | Purpose |
|---|---|
| SELECT | Retrieve data |
| JOIN | Combine tables |
| GROUP BY | Aggregation |
| ORDER BY | Sorting |
| HAVING | Filter grouped data |
| SUM() | Total calculations |
| ROUND() | Decimal formatting |
| Window Functions | Running totals |
| Foreign Keys | Relationships |

---

# 📊 Business Insights

- Wrapper category showed higher defect rates
- Box category generated strong revenue
- Inventory imbalance identified in some products
- Profit margin analysis revealed best-performing category

---

# 🎯 Learning Outcomes

Through this project, I learned:

- SQL database creation
- Data analysis using SQL
- Business KPI calculations
- Revenue & profit analysis
- Window functions
- Inventory analysis
- Manufacturing analytics

---

