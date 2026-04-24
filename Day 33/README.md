# 🚀 Day 33 – Python Coding Challenge


---

## 📌 Overview

This project contains **Day 33 Coding Challenges**, designed to strengthen:

* 🧠 Logical Thinking
* 🔁 Loop Mastery
* 📊 Data Filtering Skills
* 💼 Placement Preparation

---

## 🔹 Level 1: Placement Thinking

### 🎯 1. Number Guessing Game

💡 Concept: Infinite Loop + Conditions

```python
secret = 7

while True:
    guess = int(input("Enter your guess: "))

    if guess < secret:
        print("Too Low")
    elif guess > secret:
        print("Too High")
    else:
        print("You Won!")
        break
```

---

### 🔄 2. Reverse a Number

💡 Concept: Digit Extraction using `%` and `//`

```python
num = int(input("Enter a number: "))
rev = 0

while num > 0:
    digit = num % 10
    rev = rev * 10 + digit
    num = num // 10

print("Reversed Number:", rev)
```

---

### 🔢 3. Count Digits

💡 Concept: Iterative Division

```python
num = int(input("Enter a number: "))
count = 0

while num > 0:
    num = num // 10
    count += 1

print("Number of digits:", count)
```

---

## 🔹 Level 2: Real-World Scenario

### 📊 4. Sales Threshold Checker

💡 Concept: Data Filtering (Analytics Logic)

```python
sales = [1200, 800, 1500, 400, 2000]
count = 0

print("Sales greater than 1000:")

for s in sales:
    if s > 1000:
        print(s)
        count += 1

print("Count:", count)
```

---

### 🔁 5. Continuous Data Entry System

💡 Concept: Streaming Data Input

```python
total = 0

while True:
    num = int(input("Enter number (0 to stop): "))

    if num == 0:
        break

    total += num

print("Total sum:", total)
```

---

## 🧠 Key Learnings

✨ Infinite Loops (`while True`)

✨ Conditional Logic (`if-elif-else`)

✨ Number Manipulation

✨ Data Filtering Techniques

✨ Real-world Data Collection Logic

---

---

## 🌟 Highlights

✔ Beginner → Intermediate Transition

✔ Placement-Oriented Problems

✔ Real-World Data Analyst Thinking

✔ Clean & Readable Code

---
