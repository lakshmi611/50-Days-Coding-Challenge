# 🚗 Day 27 – Ride Booking Data Analysis (Using Tuples)

## 📌 Scenario
You are working as a **Data Analyst** for a ride-booking company (like Ola/Uber).  
You received trip data stored as **tuples**, where each tuple contains:

`(Trip_ID, City, Distance_km, Fare_amount)`

---

## 📊 Sample Data

```python
trips = (
    (101, "Bangalore", 12.5, 250),
    (102, "Hyderabad", 8.0, 180),
    (103, "Bangalore", 15.2, 300),
    (104, "Chennai", 5.5, 120),
    (105, "Bangalore", 7.8, 200)
)
```

---

## ✅ Task 1: Total Trips

```python
total_trips = len(trips)
print("Total Trips:", total_trips)
```

### 📌 Output
```
Total Trips: 5
```

---

## ✅ Task 2: Trips from Bangalore

```python
bangalore_trips = sum(1 for trip in trips if trip[1] == "Bangalore")
print("Trips from Bangalore:", bangalore_trips)
```

### 📌 Output
```
Trips from Bangalore: 3
```

---

## ✅ Task 3: Total Revenue

```python
total_revenue = sum(trip[3] for trip in trips)
print("Total Revenue:", total_revenue)
```

### 📌 Output
```
Total Revenue: 1050
```

---

## ✅ Task 4: High Distance Trips (> 10 km)

```python
print("High Distance Trips (>10 km):")
for trip in trips:
    if trip[2] > 10:
        print(trip)
```

### 📌 Output
```
(101, 'Bangalore', 12.5, 250)
(103, 'Bangalore', 15.2, 300)
```

---

## ✅ Task 5: Highest Fare Trip

```python
highest_fare_trip = max(trips, key=lambda x: x[3])
print("Highest Fare Trip:", highest_fare_trip)
```

### 📌 Output
```
Highest Fare Trip: (103, 'Bangalore', 15.2, 300)
```

---

## ⭐ Task 6: Average Fare (Bangalore Only)

```python
bangalore_fares = [trip[3] for trip in trips if trip[1] == "Bangalore"]
average_fare = sum(bangalore_fares) / len(bangalore_fares)

print("Average Fare (Bangalore):", average_fare)
```

### 📌 Output
```
Average Fare (Bangalore): 250.0
```

---

## 🎯 Key Learnings

- Working with **tuples**
- Using **list comprehensions & generator expressions**
- Applying **filtering & aggregation**
- Using built-in functions:
  - `sum()`
  - `max()`
  - `len()`

---

## 🚀 Real-World Insight

This type of analysis helps companies:
- Identify **high revenue cities**
- Track **long-distance rides**
- Optimize **pricing strategies**
- Improve **business decisions**
