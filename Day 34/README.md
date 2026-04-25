# 🚀 Day 34 – Python Coding Challenge

### 🧠 Built-in Functions Mastery | 💻 Clean Code | 📊 Problem Solving


---

## 📌 Overview

This challenge focuses on mastering **Python built-in functions** and core data structures like:

* ✅ Lists
* ✅ Sets
* ✅ Dictionaries
* ✅ Loops & Lambda Functions

Each problem is designed to simulate **real-world scenarios** like analytics, filtering, and sorting.

---

## 🧩 Problems & Solutions

---

### 🔹 1. Remove Duplicates & Preserve Order

📍 **Concepts:** `list`, `loop`, conditional check

```python
ids = [101, 102, 101, 103, 102, 104]

unique_ids = []
for i in ids:
    if i not in unique_ids:
        unique_ids.append(i)

print(unique_ids)
```

✅ **Output:**

```
[101, 102, 103, 104]
```

---

### 🔹 2. Frequency Counter (Real-time Analytics)

📍 **Concepts:** `dict`, `get()`, loop

```python
products = ["apple", "banana", "apple", "orange", "banana", "apple"]

freq = {}

for item in products:
    freq[item] = freq.get(item, 0) + 1

print(freq)
```

✅ **Output:**

```
{'apple': 3, 'banana': 2, 'orange': 1}
```

---

### 🔹 3. Find Top Scorer

📍 **Concepts:** `max()`, dictionary

```python
marks = {"A": 85, "B": 92, "C": 88}

topper = max(marks, key=marks.get)

print(topper)
```

✅ **Output:**

```
B
```

---

### 🔹 4. Common Elements in Two Lists

📍 **Concepts:** `set()`, `intersection()`

```python
skills1 = ["Python", "SQL", "Excel"]
skills2 = ["SQL", "Power BI", "Python"]

common = list(set(skills1).intersection(set(skills2)))

print(common)
```

✅ **Output:**

```
['Python', 'SQL']
```

---

### 🔹 5. Sort Dictionary by Values

📍 **Concepts:** `sorted()`, `lambda`

```python
prices = {"apple": 50, "banana": 20, "orange": 30}

sorted_prices = sorted(prices.items(), key=lambda x: x[1])

print(sorted_prices)
```

✅ **Output:**

```
[('banana', 20), ('orange', 30), ('apple', 50)]
```

---

## 🏆 Key Learnings

✨ Efficient use of built-in functions

✨ Writing clean and readable Python code

✨ Real-world problem-solving approach

✨ Data manipulation using core structures

---

## 🔥 Bonus Tips

* ⚡ Use `set()` for quick duplicate removal

* ⚡ Use `dict.get()` to avoid errors

* ⚡ `lambda` makes sorting powerful & concise

* ⚡ Built-in functions save time in interviews

---

