# 💸 Day 31 – Smart Expense Analyzer

## 📌 Objective

Analyze monthly expenses using **Python operators** and determine the financial condition of a user.

---

## 🧠 Problem Statement

You are given the following data:

```python
salary = 50000
rent = 12000
food = 8000
transport = 3000
entertainment = 4000
```

---

## ⚙️ Tasks Performed

### 🔹 Task 1: Total Expenses

* Calculate total expenses using **arithmetic operators**

### 🔹 Task 2: Savings Calculation

* Compute savings:

```python
savings = salary - total_expenses
```

### 🔹 Task 3: Expense Comparison

* Check:

  * Is **rent > food**?
  * Is **transport < entertainment**?
* Use **comparison operators**

### 🔹 Task 4: Financial Condition Check

* Based on savings:

  * 💚 `> 10000` → Good Saving
  * 💛 `5000 – 10000` → Average Saving
  * ❤️ `< 5000` → Low Saving
* Use **logical operators & conditions**

### 🔹 Task 5: Bonus Update

* Increase salary by **10%** using assignment operator:

```python
salary += salary * 0.10
```

---

## 💻 Python Implementation

```python
# 📌 Given Data
salary = 50000
rent = 12000
food = 8000
transport = 3000
entertainment = 4000

# 🔹 Task 1: Total Expenses
total_expenses = rent + food + transport + entertainment
print("Total Expenses:", total_expenses)

# 🔹 Task 2: Savings Calculation
savings = salary - total_expenses
print("Savings:", savings)

# 🔹 Task 3: Expense Comparison
print("Is rent greater than food?", rent > food)
print("Is transport less than entertainment?", transport < entertainment)

# 🔹 Task 4: Financial Condition Check
if savings > 10000:
    print("Financial Status: Good Saving")
elif 5000 <= savings <= 10000:
    print("Financial Status: Average Saving")
else:
    print("Financial Status: Low Saving")

# 🔹 Task 5: Bonus Update
salary += salary * 0.10
print("Updated Salary after Bonus:", salary)
```

---

## 📊 Output

```
Total Expenses: 27000
Savings: 23000
Is rent greater than food? True
Is transport less than entertainment? True
Financial Status: Good Saving
Updated Salary after Bonus: 55000.0
```

---

## 🚀 Key Learnings

* ➕ Arithmetic Operators (`+`, `-`)
* 🔍 Comparison Operators (`>`, `<`)
* 🔗 Logical Operators (`and`, `or`)
* 🔄 Assignment Operator (`+=`)
* 🔁 Conditional Statements (`if-elif-else`)

---

## 🌟 Project Highlights

✔ Beginner-friendly

✔ Real-life financial analysis

✔ Clean and structured logic

✔ Easy to extend (add more expense categories)

---

## 💡 Future Improvements

* 📈 Add visualization (charts)
* 💾 Store data using files or database
* 📊 Create monthly reports
* 🌐 Build a simple web app

---

