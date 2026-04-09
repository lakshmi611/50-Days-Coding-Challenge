# 📊 Day 23 Coding Challenge – Ola Defect Analysis (Strings Only)

## 🚀 Overview

This project solves a real-world **Ola complaint dataset problem** using **only string operations in Python**.

No lists, no external libraries — just pure string manipulation.

---

## 📂 Problem Statement

You are given complaint data as a **single string**:

```python

data = "Ride101-Ramesh-Late Arrival-Bangalore, Ride102-Suresh-rude behavior-Hyderabad, Ride103-Mahesh-Late arrival-Bangalore"

```

### 🎯 Tasks

1. Convert entire string to lowercase

2. Count total complaints

3. Count "late arrival" issues

4. Count complaints from Bangalore

5. Extract first driver name

6. Standardize issue names

---

## 🛠️ Solution (Python Code)

```python

# Input Data

data = "Ride101-Ramesh-Late Arrival-Bangalore, Ride102-Suresh-rude behavior-Hyderabad, Ride103-Mahesh-Late arrival-Bangalore"

# 🔹 Task 1: Convert to lowercase

data = data.lower()

# 🔹 Task 2: Count total complaints

total_complaints = data.count(",") + 1

# 🔹 Task 3: Count "late arrival"

late_count = data.count("late arrival")

# 🔹 Task 4: Count Bangalore complaints

bangalore_count = data.count("bangalore")

# 🔹 Task 5: Extract first driver name

first_record = data.split(",")[0]

driver_name = first_record.split("-")[1]

# 🔹 Task 6: Replace issue names

data = data.replace("rude behavior", "rude_behavior")

data = data.replace("late arrival", "late_arrival")

# 🔹 Output Results

print("Total Complaints:", total_complaints)

print("Late Arrival Issues:", late_count)

print("Bangalore Complaints:", bangalore_count)

print("First Driver Name:", driver_name)

print("Updated Data:", data)

```

---

## 📌 Output

```

Total Complaints: 3

Late Arrival Issues: 2

Bangalore Complaints: 2

First Driver Name: ramesh

Updated Data: ride101-ramesh-late_arrival-bangalore, ride102-suresh-rude_behavior-hyderabad, ride103-mahesh-late_arrival-bangalore

```

---

## 🧠 Concepts Used

* `lower()` → Data cleaning

* `count()` → Counting occurrences

* `split()` → Extracting data

* `replace()` → Standardization

---

## 💡 Key Learning

* How to process real-world data using **only strings**

* Understanding **data cleaning and transformation basics**

* Useful for **interviews and beginner data analyst tasks**

---

## 📁 Project Structure

```
Day23-Ola-Defect-Analysis/

│── ola_defect_analysis.py

│── README.md

```

---

## ▶️ How to Run

1. Open **Google Colab** or any Python environment

2. Copy the code

3. Run all cells

4. View output

---

## ⭐ Future Improvements

* Convert string into structured data (lists/dictionaries)

* Perform advanced analytics

* Visualize complaint trends

---

