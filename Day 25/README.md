# 🚀 Day 25 Coding Challenge

## 🧵 Strings & Tuples in Python

This set focuses on **string manipulation** and **tuple operations**—essential skills for data cleaning and transformation in Python.

---

## 📌 Challenges Covered

### 🔹 1. Student Name Formatting

Convert inconsistent student names into **proper case**.

#### 💻 Code:

```python
students = ("sunitha", "RAVI", "aNu")

formatted_names = tuple(name.capitalize() for name in students)

print("Formatted Names:", formatted_names)
```

#### 📌 Output:

```
Formatted Names: ('Sunitha', 'Ravi', 'Anu')
```

---

### 🔹 2. Count Total & Unique Subjects

Analyze subject data stored in tuples.

#### 💻 Code:

```python
subjects = ("Math", "Science", "English", "Math", "Science")

total_subjects = len(subjects)
unique_subjects = tuple(set(subjects))

print("Total Subjects:", total_subjects)
print("Unique Subjects:", unique_subjects)
```

#### 📌 Output:

```
Total Subjects: 5
Unique Subjects: ('Math', 'Science', 'English')
```

---

### 🔹 3. Remove Extra Spaces from Feedback

Clean messy user input by removing unwanted spaces.

#### 💻 Code:

```python
feedback = (" good course ", " excellent ", "average ")

clean_feedback = tuple(f.strip() for f in feedback)

print("Clean Feedback:", clean_feedback)
```

#### 📌 Output:

```
Clean Feedback: ('good course', 'excellent', 'average')
```

---

### 🔹 4. Combine Student Name & Course

Merge two tuples into a structured format.

#### 💻 Code:

```python
names = ("Anu", "Ravi", "John")
courses = ("Python", "SQL", "Power BI")

combined = tuple(n + "-" + c for n, c in zip(names, courses))

print("Combined Tuple:", combined)
```

#### 📌 Output:

```
Combined Tuple: ('Anu-Python', 'Ravi-SQL', 'John-Power BI')
```

---

### 🔹 5. Extract Email Domains

Extract domain names from email addresses.

#### 💻 Code:

```python
emails = ("anu@gmail.com", "ravi@yahoo.com", "john@edu.com")

domains = tuple(email.split("@")[1] for email in emails)

print("Email Domains:", domains)
```

#### 📌 Output:

```
Email Domains: ('gmail.com', 'yahoo.com', 'edu.com')
```

---

## 🧠 Key Concepts Learned

* ✅ String methods: `capitalize()`, `strip()`, `split()`
* ✅ Tuple operations and immutability
* ✅ Using `set()` for unique values
* ✅ List/tuple comprehensions
* ✅ `zip()` for combining data

---

