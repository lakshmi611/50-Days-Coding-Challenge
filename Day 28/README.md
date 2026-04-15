# 🛡️ Day 28 – Insurance Claims Analysis (Using Lists)

## 📌 Scenario
You are working as a **Data Analyst** for an insurance company.  
You received claim data stored in **lists**, including policy details, claim amounts, status, and customer age.

---

## 📊 Sample Data

```python
policy_ids = [101, 102, 103, 104, 105, 106]
claim_amounts = [5000, 15000, 7000, 20000, 3000, 12000]
claim_status = ["Approved", "Rejected", "Approved", "Approved", "Rejected", "Approved"]
customer_age = [25, 45, 35, 50, 23, 40]
```

---

## ✅ Task 1: Total Approved Claim Amount

```python
total_approved = sum(
    claim_amounts[i]
    for i in range(len(claim_status))
    if claim_status[i] == "Approved"
)

print("Total Approved Claim Amount:", total_approved)
```

### 📌 Output
```
Total Approved Claim Amount: 44000
```

---

## ✅ Task 2: Count Rejected Claims

```python
rejected_count = claim_status.count("Rejected")
print("Rejected Claims:", rejected_count)
```

### 📌 Output
```
Rejected Claims: 2
```

---

## ✅ Task 3: High-Value Claims (> ₹10,000)

```python
print("High Value Claims (Policy IDs):")
for i in range(len(claim_amounts)):
    if claim_amounts[i] > 10000:
        print(policy_ids[i])
```

### 📌 Output
```
High Value Claims (Policy IDs):
102
104
106
```

---

## ✅ Task 4: Average Age of Approved Customers

```python
approved_ages = [
    customer_age[i]
    for i in range(len(claim_status))
    if claim_status[i] == "Approved"
]

average_age = sum(approved_ages) / len(approved_ages)

print("Average Age (Approved):", average_age)
```

### 📌 Output
```
Average Age (Approved): 37.5
```

---

## ⭐ Task 5: Risk Category Tagging

```python
risk_category = []

for age in customer_age:
    if age < 30:
        risk_category.append("Low Risk")
    elif 30 <= age <= 45:
        risk_category.append("Medium Risk")
    else:
        risk_category.append("High Risk")

print("Risk Categories:", risk_category)
```

### 📌 Output
```
Risk Categories: ['Low Risk', 'Medium Risk', 'Medium Risk', 'High Risk', 'Low Risk', 'Medium Risk']
```

---

## 🎯 Key Learnings

- Working with **lists and indexing**
- Using **conditional filtering**
- Applying **list comprehensions**
- Performing **aggregation operations**
- Data classification using **business rules**

---

## 🚀 Real-World Insight

This type of analysis helps insurance companies:

- Identify **high claim payouts**
- Track **rejected vs approved claims**
- Detect **high-value claims**
- Understand **customer risk profiles**
- Improve **underwriting and pricing strategies**

---

