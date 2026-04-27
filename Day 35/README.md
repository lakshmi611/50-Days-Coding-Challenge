# 🚀 Day 35 – Python Coding Challenge

### 🧠 Built-in Functions | ⚡ Advanced Practice | 📊 Real-World Logic

---

## 📌 Overview

This challenge strengthens understanding of **Python built-in functions** and efficient data handling techniques.

🔍 Focus Areas:

* List Comprehension
* Sorting & String Handling
* Set Operations
* Dictionary Methods
* Data Cleaning


---

## 🧩 Problems & Solutions

---

### 🔹 1. Flatten a Nested List

📍 **Concept:** List Comprehension

```python
nested = [[1, 2], [3, 4], [5]]

flat = [item for sublist in nested for item in sublist]

print(flat)
```

✅ **Output:**

```
[1, 2, 3, 4, 5]
```

---

### 🔹 2. Check Anagram

📍 **Concept:** `sorted()`

```python
s1 = "listen"
s2 = "silent"

print(sorted(s1) == sorted(s2))
```

✅ **Output:**

```
True
```

---

### 🔹 3. Find Missing Number

📍 **Concept:** `set()`

```python
nums = [1, 2, 4, 5]

missing = list(set(range(1, 6)) - set(nums))[0]

print(missing)
```

✅ **Output:**

```
3
```

---

### 🔹 4. Group Words by First Letter

📍 **Concept:** `setdefault()`

```python
words = ["apple", "ant", "banana", "bat"]

grouped = {}

for word in words:
    grouped.setdefault(word[0], []).append(word)

print(grouped)
```

✅ **Output:**

```
{'a': ['apple', 'ant'], 'b': ['banana', 'bat']}
```

---

### 🔹 5. Remove Empty Values

📍 **Concept:** Dictionary Comprehension

```python
data = {"a": 1, "b": None, "c": 3, "d": None}

cleaned = {k: v for k, v in data.items() if v is not None}

print(cleaned)
```

✅ **Output:**

```
{'a': 1, 'c': 3}
```

---

## 🏆 Key Learnings

✨ Mastered list flattening using comprehension

✨ Used `sorted()` for string comparison (anagrams)

✨ Applied set logic to detect missing values

✨ Leveraged `setdefault()` for grouping

✨ Cleaned datasets using dictionary comprehension

---


