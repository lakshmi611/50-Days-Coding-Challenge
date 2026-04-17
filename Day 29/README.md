# 🚀 Day 29 – Student Marks Analyzer (Dictionary)

## 📌 Project Overview

This project analyzes **student marks data** using Python dictionaries.

### 🔍 Features:
- 📊 Calculate Total & Average Marks  
- 🏆 Identify Top Scorer  
- ❌ Detect Failed Students (marks < 40)

---

## 📂 Dataset

```python
students = {
    "Asha": {"Math": 78, "Science": 85, "English": 67},
    "Ravi": {"Math": 35, "Science": 40, "English": 50},
    "John": {"Math": 90, "Science": 92, "English": 88}
}
```

---

## 🧠 Approach

- Use **nested dictionaries** for structured data  
- Iterate using `for` loop  
- Apply:
  - `sum()` → Total marks  
  - Division → Average  
  - `any()` → Failure detection  

---

## 💻 Python Code

```python
students = {
    "Asha": {"Math": 78, "Science": 85, "English": 67},
    "Ravi": {"Math": 35, "Science": 40, "English": 50},
    "John": {"Math": 90, "Science": 92, "English": 88}
}

results = {}
top_scorer = ""
highest_total = 0
failed_students = []

for student, marks in students.items():
    total = sum(marks.values())
    average = total / len(marks)
    
    results[student] = {
        "Total": total,
        "Average": round(average, 2)
    }
    
    if total > highest_total:
        highest_total = total
        top_scorer = student
    
    if any(mark < 40 for mark in marks.values()):
        failed_students.append(student)

print("📊 Student Results:")
for student, data in results.items():
    print(f"{student} -> Total: {data['Total']}, Average: {data['Average']}")

print("\n🏆 Top Scorer:", top_scorer)
print("❌ Failed Students:", failed_students)
```

---

## 📈 Output

```
📊 Student Results:
Asha -> Total: 230, Average: 76.67
Ravi -> Total: 125, Average: 41.67
John -> Total: 270, Average: 90.00

🏆 Top Scorer: John
❌ Failed Students: ['Ravi']
```

---

## 🔍 Key Insights

- 🥇 John is the **top scorer**
- ⚠️ Ravi **failed** (marks < 40)
- 📊 Dictionary-based analysis is efficient for structured data

---

## 🛠️ Tech Stack

- 🐍 Python  
- 📚 Data Structures (Dictionary)  
- 📊 Basic Data Analysis  

---

## 🎯 Learning Outcomes

- Work with **nested dictionaries**
- Perform **real-world analysis**
- Write **clean Python logic**

---

