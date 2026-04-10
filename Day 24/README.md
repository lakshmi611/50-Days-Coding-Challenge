# 🚗 Ride Booking Analysis | Day 24 Coding Challenge

## 📌 Overview

This project performs data analysis on ride-booking data (similar to Ola/Uber) using Python. It extracts key insights such as total rides, revenue, and driver ratings.

---

## 📂 Dataset

The dataset consists of ride records stored as tuples:

```python

rides = (

    (101, "Ravi", "Bangalore", 250, 4.5),

    (102, "Anjali", "Hyderabad", 180, 4.2),

    (103, "Kiran", "Bangalore", 300, 4.8),

    (104, "Meena", "Chennai", 220, 4.0),

    (105, "Arjun", "Bangalore", 150, 3.9)

)

```

### 🔹 Attributes

- **ride_id** → Unique ride identifier  

- **driver_name** → Name of the driver  

- **city** → Ride location  

- **fare** → Ride cost  

- **rating** → Customer rating  

---

## 🎯 Objectives

- Count total number of rides  

- Extract rides from Bangalore  

- Calculate total revenue from Bangalore  

- Identify the highest-rated driver  

- Compute average rating per city  

---

## ⚙️ Implementation

### 1️⃣ Total Rides

```python

total_rides = len(rides)

```

### 2️⃣ Bangalore Rides

```python

bangalore_rides = [ride for ride in rides if ride[2] == "Bangalore"]

```

### 3️⃣ Revenue from Bangalore

```python

total_revenue = sum(ride[3] for ride in rides if ride[2] == "Bangalore")

```

### 4️⃣ Highest Rated Driver

```python

highest_rated = max(rides, key=lambda x: x[4])

```

### 5️⃣ Average Rating per City

```python

city_ratings = {}

for ride in rides:

    city = ride[2]

    rating = ride[4]
    
    if city not in city_ratings:

        city_ratings[city] = []
    
    city_ratings[city].append(rating)

avg_ratings = {

    city: round(sum(ratings) / len(ratings), 1)

    for city, ratings in city_ratings.items()

}

```

---

## 📊 Results

| Metric | Result |
|--------|--------|
| Total Rides | 5 |
| Bangalore Rides | 3 |
| Revenue (Bangalore) | 700 |
| Highest Rated Driver | Kiran (4.8⭐) |

### ⭐ Average Rating per City

```json

{

  "Bangalore": 4.4,

  "Hyderabad": 4.2,

  "Chennai": 4.0

}

```

---

## 🧠 Key Learnings

- Data filtering using list comprehensions  

- Aggregation using built-in Python functions  

- Grouping data using dictionaries  

- Applying real-world data analysis logic  

---

## 🚀 Future Enhancements

- Implement using Pandas  

- Add data visualizations  

- Expand dataset for deeper insights  

---


