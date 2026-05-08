# Financial Performance Dashboard – Power BI

## Project Overview

This project focuses on analyzing company financial performance using Microsoft Power BI. The dashboard helps identify profit-driving regions, high revenue products, loss-making areas, customer profitability, and revenue growth trends.

The main objective of this project is to transform raw financial data into meaningful business insights through interactive dashboards and DAX calculations.

---

# Dataset Information

## Dataset Name
Financial_Data

## Columns Used

| Column Name | Description |
|---|---|
| Date | Transaction date |
| Region | Business region |
| Product | Financial product/service |
| Revenue | Total revenue generated |
| Cost | Total operational cost |
| Profit | Revenue - Cost |
| Discount | Discount offered |
| Customer_Type | New or Existing customer |

---

# Tools & Technologies Used

- Microsoft Power BI
- Microsoft Excel
- DAX (Data Analysis Expressions)

---

# Project Objectives

- Analyze company revenue and profitability
- Identify top-performing regions
- Detect products with low profit margins
- Understand discount impact on profits
- Track monthly revenue growth
- Compare customer profitability

---

# DAX Calculations

## Calculated Columns

### Profit Margin

```DAX
Profit Margin = Financial_Data[Profit] / Financial_Data[Revenue]
```

### Discount Value

```DAX
Discount Value = Financial_Data[Revenue] * Financial_Data[Discount]
```

### Loss Flag

```DAX
Loss Flag = IF(Financial_Data[Profit] < 0, "Loss", "Profit")
```

---

## Measures

### Total Revenue

```DAX
Total Revenue = SUM(Financial_Data[Revenue])
```

### Total Profit

```DAX
Total Profit = SUM(Financial_Data[Profit])
```

### Profit Margin %

```DAX
Profit Margin % = DIVIDE([Total Profit], [Total Revenue])
```

### Dynamic Dashboard Title

```DAX
Title = "Financial Dashboard - " & SELECTEDVALUE(Financial_Data[Region], "All Regions")
```

---

# Dashboard Features

## KPI Cards

- Total Revenue
- Total Profit
- Profit Margin %

---

## Visualizations

| Visualization | Purpose |
|---|---|
| Bar Chart | Profit by Region |
| Column Chart | Revenue by Product |
| Line Chart | Monthly Revenue Trend |
| Pie Chart | Customer Type Distribution |
| Scatter Chart | Discount vs Profit Analysis |

---

# Interactive Filters (Slicers)

- Region
- Product
- Customer Type

---

# Business Questions Solved

1. Which region generates the highest profit?
2. Which product has high revenue but low profit?
3. Does discount negatively affect profit?
4. Which customer type is more profitable?
5. What is the monthly revenue trend?

---

# Key Insights

- Some regions generate significantly higher profits than others.
- Higher discounts can reduce overall profit margins.
- Existing customers may contribute more stable revenue.
- Certain products generate high revenue but lower profitability.

---

# Project Workflow

## Step 1 — Data Collection
Collected financial transaction data.

## Step 2 — Data Cleaning
Handled formatting and validated columns.

## Step 3 — Data Modeling
Imported dataset into Power BI.

## Step 4 — DAX Calculations
Created calculated columns and measures.

## Step 5 — Dashboard Development
Built interactive financial dashboard.

## Step 6 — Business Insights
Analyzed trends and profitability.

---

# Skills Demonstrated

- Data Analysis
- Financial Analytics
- Dashboard Design
- DAX Calculations
- Data Visualization
- Business Intelligence
- Power BI Reporting

---

# Files Included

| File | Description |
|---|---|
| Financial_Data.xlsx | Dataset |
| Finance_Dashboard.pbix | Power BI dashboard |
| README.md | Project documentation |

---


# Future Improvements

- Add forecasting analysis
- Implement advanced KPI tracking
- Add drill-through reports
- Integrate SQL database connection
- Add real-time financial monitoring

---


# Conclusion

This project demonstrates how financial data can be transformed into actionable insights using Power BI dashboards and DAX calculations. The dashboard enables management to monitor revenue, profitability, customer trends, and business growth opportunities effectively.
