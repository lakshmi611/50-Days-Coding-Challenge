# 📘 Day 26 – Coding Challenge: Strings & Tuples

✨ This challenge focuses on performing operations on **tuples and strings** such as finding lengths, reversing data, joining elements, and analyzing text.

---

## 📌 Challenges Overview

* Find longest string in a tuple
* Join tuple elements into a string
* Reverse strings
* Count vowels
* Convert text to uppercase

---

# 🧩 Challenge 1: Find Longest Student Name

### 🔹 Problem

Find the longest name from the tuple.

### 🔹 Code

```python
students = ("Anu", "Ravikumar", "Jo")

longest_name = max(students, key=len)
print("Longest Name:", longest_name)
```

### 🔹 Output

```
Longest Name: Ravikumar
```

---

# 🧩 Challenge 2: Join Subjects into Single String

### 🔹 Problem

Display subjects as a single string.

### 🔹 Code

```python
subjects = ("Math", "Science", "English")

result = ", ".join(subjects)
print("Subjects:", result)
```

### 🔹 Output

```
Subjects: Math, Science, English
```

---

# 🧩 Challenge 3: Reverse Each Student Name

### 🔹 Problem

Reverse each name (data masking concept).

### 🔹 Code

```python
students = ("Anu", "Ravi")

reversed_names = tuple(name[::-1] for name in students)
print("Reversed Names:", reversed_names)
```

### 🔹 Output

```
Reversed Names: ('unA', 'ivaR')
```

---

# 🧩 Challenge 4: Count Vowels in Each Name

### 🔹 Problem

Count number of vowels in each name.

### 🔹 Code

```python
students = ("Anu", "Ravi")

vowels = "aeiouAEIOU"

for name in students:
    count = sum(1 for char in name if char in vowels)
    print(f"{name}: {count} vowels")
```

### 🔹 Output

```
Anu: 2 vowels  
Ravi: 2 vowels
```

---

# 🧩 Challenge 5: Convert Tuple to Uppercase String

### 🔹 Problem

Convert tuple values into uppercase string format.

### 🔹 Code

```python
courses = ("python", "sql", "power bi")

result = " | ".join(course.upper() for course in courses)
print("Courses:", result)
```

### 🔹 Output

```
Courses: PYTHON | SQL | POWER BI
```

---

# 🎯 Key Learnings

✔ Tuple manipulation

✔ String operations (`join`, slicing, `upper`)

✔ Iteration and comprehension

✔ Basic text analysis

---

# 🚀 Conclusion

This set of challenges helps strengthen your understanding of **Python string handling and tuple operations**, which are essential for data processing tasks.
