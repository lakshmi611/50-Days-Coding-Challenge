# 📊 Student Batch Performance Analyzer

---

## 📌 Project Overview

This project analyzes **student performance data** across multiple batches using **Python functions**.

It helps in:

* 📈 Identifying the **best-performing batch**
* 🏆 Finding **top-performing students**
* ⚠️ Detecting **at-risk students**
* 📊 Generating **batch-level insights**

---

## 🧠 Concepts Used

* Functions (User-defined)
* Lists & Dictionaries
* Loops & Conditions
* Data Aggregation
* Basic Data Analysis

---

## 📂 Dataset Structure

Each student record contains:

```python
{
  "batch": "b7",
  "name": "Anil",
  "consumption": 72,
  "live": 65,
  "recording": 70,
  "assignment_sub": 80,
  "assignment_score": 75
}
```

---

## ⚙️ Functions Implemented

### 1️⃣ `calculate_average(values)`

* Returns average of given list

---

### 2️⃣ `find_top_performers(data, column, threshold)`

* Returns students scoring **≥ threshold**

---

### 3️⃣ `find_at_risk_students(data, column, threshold)`

* Returns students scoring **< threshold**

---

### 4️⃣ `batch_summary(data)`

Returns:

* Total students
* Average consumption
* Average assignment submission

---

### 5️⃣ `rank_batches(batch_data)`

* Identifies **best-performing batch**

---

## 🚀 How to Run

```bash
python student_analyzer.py
```

---

## 📊 Sample Output

```text
Batch Summary:
b7 - Avg Consumption: 50.0%, Avg Assignment: 49.0%
b8 - Avg Consumption: 51.0%, Avg Assignment: 49.4%
b9 - Avg Consumption: 58.6%, Avg Assignment: 57.6%

Best Batch: b9

Top Performers: ['Pooja', 'Asha', 'Vikram', 'Neha']

At-Risk Students: ['Ravi', 'Sneha', 'Karthik']
```

---

## 🎯 Key Insights

* 🥇 **Best Batch:** b9
* 📈 Higher consumption = Better performance
* ⚠️ Students below 20% consumption need attention
* 📊 Consistent engagement improves assignment scores

---

## 💡 Real-World Use Case

This project simulates a **Data Analyst role** where:

* You analyze student engagement
* Provide insights to improve performance
* Help educators take data-driven decisions

---

