# 🧾 Insurance Claims Analysis (SQL Coding Challenge)

## 📌 Project Overview

This project focuses on analyzing an **Insurance Claims dataset** using SQL.

The goal is to practice **subqueries, correlated subqueries, and aggregate functions** through real-world scenarios.

---

## 🗂️ Dataset Structure

### Table: `claims`

| Column Name   | Data Type   | Description                      |

| ------------- | ----------- | -------------------------------- |

| claim_id      | INT         | Unique claim ID                  |

| policy_holder | VARCHAR(50) | Name of policy holder            |

| policy_type   | VARCHAR(50) | Type of insurance                |

| claim_amount  | INT         | Amount claimed                   |

| claim_date    | DATE        | Date of claim                    |

| status        | VARCHAR(20) | Claim status (Approved/Rejected) |

---

## ⚙️ Database Setup

### Create Table

```sql

CREATE TABLE claims (

    claim_id INT,

    policy_holder VARCHAR(50),

    policy_type VARCHAR(50),

    claim_amount INT,

    claim_date DATE,

    status VARCHAR(20)

);

```

### Insert Sample Data

```sql

INSERT INTO claims VALUES

(1, 'Ravi', 'Health', 50000, '2024-01-10', 'Approved'),

(2, 'Anita', 'Vehicle', 20000, '2024-01-12', 'Rejected'),

(3, 'Ravi', 'Health', 30000, '2024-01-20', 'Approved'),

(4, 'Suresh', 'Life', 100000, '2024-01-25', 'Approved'),

(5, 'Anita', 'Vehicle', 15000, '2024-02-01', 'Approved'),

(6, 'Kiran', 'Health', 40000, '2024-02-10', 'Rejected'),

(7, 'Ravi', 'Health', 70000, '2024-02-15', 'Approved'),

(8, 'Suresh', 'Life', 50000, '2024-02-20', 'Rejected');

```

---

## 📊 Tasks & Solutions

### 🔹 Task 1: Claims Above Average Amount

```sql

SELECT *

FROM claims

WHERE claim_amount > (

    SELECT AVG(claim_amount) FROM claims

);

```

---

### 🔹 Task 2: Policy Holders with Approved Claims

```sql

SELECT DISTINCT policy_holder

FROM claims

WHERE status = 'Approved';

```

---

### 🔹 Task 3: Claims Above Policy Holder’s Average

```sql

SELECT *

FROM claims c1

WHERE claim_amount > (

    SELECT AVG(cl.claim_amount)

    FROM claims cl

    WHERE cl.policy_holder = c1.policy_holder

);

```

---

### 🔹 Task 4: Display Each Claim with Overall Average

```sql

SELECT 

    claim_id,

    policy_holder,

    claim_amount,

    (SELECT AVG(claim_amount) FROM claims) AS overall_avg

FROM claims;

```

---

## 🧠 Key Concepts Used

* Subqueries

* Correlated Subqueries

* Aggregate Functions (AVG)

* Filtering (WHERE clause)

* DISTINCT keyword

---

## 📈 Learning Outcome

* Understand how to use **subqueries for comparisons**

* Apply **correlated subqueries for row-level analysis**

* Work with **real-world business scenarios**

* Improve SQL problem-solving skills

---

## 🚀 How to Run

1. Open MySQL / SQL Server

2. Create the database

3. Run table creation script

4. Insert sample data

5. Execute each task query

---

