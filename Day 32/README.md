# 🚀 Day 32 – Python Coding Challenge


---

## 📌 Overview

This repository contains solutions for **Day 32 Coding Challenge**, focusing on:

* 🧠 Logical Thinking
* 🔁 Loops (while)
* 🔀 Conditional Statements (if-elif-else)
* 🔐 Real-world problem solving

---

# 🔹 Level 1: Understanding Logic

## ✅ 1. Even or Odd Checker

```python
num = int(input("Enter a number: "))

if num % 2 == 0:
    print("Even")
else:
    print("Odd")
```

---

## ✅ 2. Positive, Negative or Zero

```python
num = int(input("Enter a number: "))

if num > 0:
    print("Positive")
elif num < 0:
    print("Negative")
else:
    print("Zero")
```

---

## ✅ 3. Print Numbers from 1 to N

```python
n = int(input("Enter N: "))

i = 1
while i <= n:
    print(i)
    i += 1
```

---

# 🔹 Level 2: Real Thinking

## ✅ 4. Sum of First N Numbers

```python
n = int(input("Enter N: "))

i = 1
total = 0

while i <= n:
    total += i
    i += 1

print("Sum:", total)
```

---

## ✅ 5. Password Retry System 🔐

```python
correct_password = "admin123"
attempts = 0

while attempts < 3:
    password = input("Enter password: ")
    
    if password == correct_password:
        print("Access Granted")
        break
    else:
        print("Wrong Password")
        attempts += 1

if attempts == 3:
    print("Access Denied")
```

---

## ✅ 6. Multiplication Table

```python
num = int(input("Enter a number: "))

i = 1
while i <= 10:
    print(f"{num} x {i} = {num * i}")
    i += 1
```

---

# 🎯 Key Concepts Covered

* ✔️ Conditional Statements (`if`, `elif`, `else`)
* ✔️ While Loop
* ✔️ Loop Control
* ✔️ Basic Input/Output
* ✔️ Problem Solving Skills

---

# 💡 Learning Outcomes

After completing this challenge, you will:

* 🧠 Improve logical thinking
* ⚡ Write efficient loop-based programs
* 🔐 Understand real-world logic (like password systems)
* 📊 Build a strong programming foundation

---
