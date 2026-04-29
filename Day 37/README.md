# 🎓 Student Report System (Python)

---

## 📌 Project Overview

This project is a **Student Report System** built using Python.
It demonstrates the use of **user-defined functions** to manage student marks, calculate totals, averages, and assign grades.

---

## 🚀 Features

✅ Input marks for 3 subjects
✅ Calculate total marks
✅ Compute average marks
✅ Assign grades based on performance
✅ Clean and modular code using functions

---

## 🧠 Concepts Used

* Functions
* Lists
* Conditional Statements (`if-elif-else`)
* User Input Handling
* Basic Python Logic

---

## 📊 Grading Criteria

| Average Marks | Grade |
| ------------- | ----- |
| ≥ 90          | A     |
| ≥ 75          | B     |
| ≥ 50          | C     |
| < 50          | D     |

---

## 💻 Code Implementation

```python
# Function to get marks
def get_marks():
    marks = []
    for i in range(1, 4):
        m = int(input(f"Enter marks for subject {i}: "))
        marks.append(m)
    return marks


# Function to calculate total
def calculate_total(marks):
    return sum(marks)


# Function to calculate average
def calculate_average(total):
    return total / 3


# Function to assign grade
def get_grade(avg):
    if avg >= 90:
        return "A"
    elif avg >= 75:
        return "B"
    elif avg >= 50:
        return "C"
    else:
        return "D"


# Main program
def main():
    marks = get_marks()
    total = calculate_total(marks)
    average = calculate_average(total)
    grade = get_grade(average)

    print("\n--- Student Report ---")
    print("Marks:", marks)
    print("Total:", total)
    print("Average:", average)
    print("Grade:", grade)


# Run program
main()
```

---

## ▶️ Output

```
Enter marks for subject 1: 85
Enter marks for subject 2: 90
Enter marks for subject 3: 80

--- Student Report ---
Marks: [85, 90, 80]
Total: 255
Average: 85.0
Grade: B
```

---

