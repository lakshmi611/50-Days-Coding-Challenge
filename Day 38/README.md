# 💼 Insurance Premium Calculator – Day 38 Coding Challenge

## 📌 Problem Statement

Build a Python program that calculates the **annual insurance premium** for a customer based on:

* Customer **age**
* **Policy type** (health, vehicle, life)
* Number of **claims** made in the last year

---

## 🎯 Objective

To apply:

* Variables
* Input/Output
* Conditional statements
* Functions
* Arithmetic operations
* Basic validation

---

## 📥 Inputs Required

* Customer Name
* Age
* Policy Type (`health / vehicle / life`)
* Number of Claims

---

## 💰 Base Premium Table

| Policy Type | Base Premium |
| ----------- | ------------ |
| Health      | ₹8000        |
| Vehicle     | ₹12000       |
| Life        | ₹10000       |

---

## 📊 Business Rules

### 👤 Age Adjustment

* Age < 25 → +20% increase
* Age 25–45 → No change
* Age > 45 → +15% increase

### 📉 Claims Adjustment

* Claims > 2 → +25% increase
* Claims = 0 → −10% discount

### ⚠️ Validation

* Invalid policy type → Show error message

---

## 🧑‍💻 Complete Python Code

```python
def calculate_premium(age, policy_type, claims):
    # Base premium
    if policy_type == "health":
        base = 8000
    elif policy_type == "vehicle":
        base = 12000
    elif policy_type == "life":
        base = 10000
    else:
        return None, "Invalid policy type"

    premium = base

    # Age adjustment
    if age < 25:
        premium += 0.20 * base
    elif age > 45:
        premium += 0.15 * base

    # Claims adjustment
    if claims > 2:
        premium += 0.25 * base
    elif claims == 0:
        premium -= 0.10 * base

    return base, int(premium)


# -------- Main Program --------
name = input("Enter Customer Name: ")
age = int(input("Enter Age: "))
policy_type = input("Enter Policy Type (health/vehicle/life): ").lower()
claims = int(input("Enter Number of Claims: "))

base, result = calculate_premium(age, policy_type, claims)

if base is None:
    print(result)
else:
    print("\n----- Insurance Details -----")
    print(f"Customer Name: {name}")
    print(f"Policy Type: {policy_type}")
    print(f"Base Premium: ₹{base}")
    print(f"Final Premium: ₹{result}")
```

---

## 🧮 Sample Test Case

### 📥 Input

```
Name: Ravi  
Age: 23  
Policy Type: health  
Claims: 0  
```

### 📊 Calculation

* Base Premium = ₹8000
* Age < 25 → +20% = ₹1600
* Subtotal = ₹9600
* No Claim Discount (10%) = ₹960
* Final Premium = ₹8640

---

## 📤 Output

```
----- Insurance Details -----
Customer Name: Ravi
Policy Type: health
Base Premium: ₹8000
Final Premium: ₹8800
```

---

## 🧠 Program Flow

1. Take user input
2. Select base premium
3. Apply age adjustment
4. Apply claims adjustment
5. Display final premium

---


## 📚 Skills Demonstrated

* Python fundamentals
* Decision-making logic
* Function creation
* Clean code structure

---

## 🌟 Bonus Task

✔ Implemented reusable function:

```python
calculate_premium(age, policy_type, claims)
```

---

