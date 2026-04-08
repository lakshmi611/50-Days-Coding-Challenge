# 📊 Sales Data Analysis (Python Basics)

## 📌 Project Overview

This project demonstrates the use of **Python variables and data types** to process a simple e-commerce sales order.

It includes calculations for total price, discount, GST, and final bill generation.

---

## 🎯 Objective

* Store data using variables

* Identify data types

* Perform calculations

* Display formatted output

---

## 📥 Given Data

```python

order_id = "ORD12345"

customer_name = "Rahul"

product_price = 799.99

quantity = 3

discount = 0.10

is_member = True

```

---

## 🔹 Task 1: Declare Variables

Variables are created to store order details such as ID, customer name, price, quantity, discount, and membership status.

---

## 🔹 Task 2: Identify Data Types

```python

print(type(order_id))

print(type(customer_name))

print(type(product_price))

print(type(quantity))

print(type(discount))

print(type(is_member))

```

### ✅ Output

```

<class 'str'>

<class 'str'>

<class 'float'>

<class 'int'>

<class 'float'>

<class 'bool'>

```

---

## 🔹 Task 3: Calculate Total Price

```python

total_price = product_price * quantity

print("Total Price:", total_price)

```

### ✅ Output

```
Total Price: 2399.97

```

---

## 🔹 Task 4: Apply Discount

```python

discount_amount = total_price * discount

price_after_discount = total_price - discount_amount

print("Discount Amount:", discount_amount)

print("Price After Discount:", price_after_discount)

```

### ✅ Output

```

Discount Amount: 239.997

Price After Discount: 2159.973

```

---

## 🔹 Task 5: Add GST (18%)

```python

gst = price_after_discount * 0.18

final_amount = price_after_discount + gst

print("GST:", gst)

print("Final Amount:", final_amount)

```

### ✅ Output

```

GST: 388.79514

Final Amount: 2548.76814

```

---

## 🔹 Task 6: Display Final Bill

```python

print("\n--- Final Bill ---")

print("Order ID:", order_id)

print("Customer:", customer_name)

print("Total Price:", total_price)

print("Discount Applied:", "Yes" if is_member else "No")

print("Final Amount (including GST):", final_amount)

```

### ✅ Final Output

```

--- Final Bill ---

Order ID: ORD12345

Customer: Rahul

Total Price: 2399.97

Discount Applied: Yes

Final Amount (including GST): 2548.76814

```

---

## 🧠 Key Concepts Learned

* Variables and Data Types

* Arithmetic Operations

* Conditional Expressions

* Output Formatting

---

## 🚀 Tools Used

* Python

* Google Colab

---

## 📌 Conclusion

This project helps beginners understand how to use Python for basic data processing and calculations in real-world scenarios like sales billing.

---
