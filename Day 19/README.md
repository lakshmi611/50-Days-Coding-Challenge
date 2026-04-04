# 🌾 Farm Yield Optimization – SQL Project

## 📌 Project Overview

This project focuses on analyzing agricultural data to improve crop yield and optimize resource usage. Using SQL, we extract insights from farm operations including productivity, irrigation, and environmental impact.

---

## 🗂️ Database Schema

The database consists of four tables:

### 1. farmers

- farmer_id (Primary Key)

- first_name

- last_name

- email

- hire_date

### 2. plots

- plot_id (Primary Key)

- plot_name

- farmer_id (Foreign Key)

- crop_type

- soil_type

### 3. yields

- yield_id (Primary Key)

- plot_id (Foreign Key)

- harvest_date

- yield_kg

- weather_condition

### 4. irrigation_logs

- log_id (Primary Key)

- plot_id (Foreign Key)

- irrigation_date

- water_amount_liters

---

## ⚙️ Steps Performed

### ✅ Database Creation

- Created database `agri_innovate`

- Defined tables with constraints (Primary & Foreign Keys)

### ✅ Data Insertion

- Inserted sample data into all tables

- Ensured relational consistency


### ✅ SQL Analysis

Executed queries to solve multiple analytical problems.

---

## 📊 Task Solutions

### 🔹 Task 1: Productivity & Performance

- Top 3 most productive plots (based on average yield)

- Total water consumption per plot with ranking

### 🔹 Task 2: Yield & Environmental Analysis

- Average yield by crop type and weather condition

- Highest yielding plot for each soil type

### 🔹 Task 3: Farmer & Resource Management

- Farmer with lowest average water consumption

- Monthly harvest analysis

### 🔹 Task 4: Advanced Analysis (Bonus)

- Identified plots with:

  - Below-average yield (per crop type)

  - Above-average water usage (per crop type)

---

## 📈 Key Insights

- High yield is influenced by multiple factors such as soil type and weather

- Increased water usage does not always lead to higher productivity

- Efficient resource management is crucial for sustainable farming

- Data-driven decisions can significantly improve farm performance

---

## 🛠️ Tools Used
- MySQL

- MySQL Workbench

---

