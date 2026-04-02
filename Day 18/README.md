# 📊 Social Media Data Analysis (SQL Project)

## 📌 Project Overview

This project analyzes a social media platform database called **ConnectHub**.

The database stores information about users, posts, likes, comments, and friendships.

The objective is to use **SQL queries, joins, subqueries, and stored procedures** to extract meaningful insights about user activity and engagement.

---

## 🗂️ Database Schema

### 1. Users

* user_id (Primary Key)

* username

* email

* join_date

### 2. Posts

* post_id (Primary Key)

* user_id (Foreign Key)

* content

* post_date


### 3. Likes

* like_id (Primary Key)

* user_id (Foreign Key)

* post_id (Foreign Key)

* like_date

### 4. Comments

* comment_id (Primary Key)

* post_id (Foreign Key)

* user_id (Foreign Key)

* comment_text

* comment_date

### 5. Friendships

* friendship_id (Primary Key)

* user_id1 (Foreign Key)

* user_id2 (Foreign Key)

* since_date

---

## ⚙️ Database Setup

```sql

DROP DATABASE IF EXISTS connecthub;

CREATE DATABASE connecthub;

USE connecthub;

```

### ✅ Tables Created

* Users

* Posts

* Likes

* Comments

* Friendships

### ⚠️ Important Rule

Insert data in this order:

1. Users

2. Posts

3. Likes

4. Comments

5. Friendships

---

## 📌 Tasks & Solutions

---

### 🔹 Task 1: Basic Joins

#### 1. Retrieve all posts with username

```sql

SELECT p.post_id, u.username, p.content, p.post_date

FROM Posts p

JOIN Users u ON p.user_id = u.user_id;

```

#### 2. Comments with commenter username

```sql

SELECT c.comment_id, p.post_id, u.username, c.comment_text, c.comment_date

FROM Comments c

JOIN Users u ON c.user_id = u.user_id

JOIN Posts p ON c.post_id = p.post_id;

```

---

### 🔹 Task 2: Aggregations & Subqueries

#### 3. Top 3 users with most posts

```sql

SELECT u.user_id, u.username, COUNT(p.post_id) AS total_posts

FROM Users u

JOIN Posts p ON u.user_id = p.user_id

GROUP BY u.user_id, u.username

ORDER BY total_posts DESC

LIMIT 3;

```

#### 4. Posts with more likes than average

```sql

SELECT p.post_id, COUNT(l.like_id) AS like_count

FROM Posts p

JOIN Likes l ON p.post_id = l.post_id

GROUP BY p.post_id

HAVING like_count > (

    SELECT AVG(like_counts)

    FROM (

        SELECT COUNT(*) AS like_counts

        FROM Likes

        GROUP BY post_id

    ) AS avg_table

);

```

#### 5. Users who never posted but liked posts

```sql

SELECT u.user_id, u.username

FROM Users u

WHERE EXISTS (

    SELECT 1 FROM Likes l WHERE l.user_id = u.user_id

)

AND NOT EXISTS (

    SELECT 1 FROM Posts p WHERE p.user_id = u.user_id

);

```

📌 Note: If no rows are returned, it means all users who liked posts have also posted.

---

### 🔹 Task 3: Relationships & Nested Queries

#### 6. Friends of a specific user (user_id = 3)

```sql

SELECT u.user_id, u.username

FROM Users u

JOIN Friendships f 

ON (u.user_id = f.user_id1 OR u.user_id = f.user_id2)

WHERE 3 IN (f.user_id1, f.user_id2)

AND u.user_id != 3;

```

#### 7. Posts liked by friends of a user

```sql

SELECT DISTINCT p.post_id, p.content

FROM Posts p

JOIN Likes l ON p.post_id = l.post_id

WHERE l.user_id IN (

    SELECT 

        CASE 

            WHEN user_id1 = 3 THEN user_id2

            ELSE user_id1

        END

    FROM Friendships

    WHERE 3 IN (user_id1, user_id2)

);

```

---

### 🔹 Task 4: Stored Procedure

#### 8. GetUserActivity Procedure

```sql

DELIMITER $$

CREATE PROCEDURE GetUserActivity(IN userId INT)

BEGIN

    SELECT 

        (SELECT COUNT(*) FROM Posts WHERE user_id = userId) AS total_posts,

        (SELECT COUNT(*) FROM Likes WHERE user_id = userId) AS total_likes_given,

        (SELECT COUNT(*) 

         FROM Likes l

         JOIN Posts p ON l.post_id = p.post_id

         WHERE p.user_id = userId) AS total_likes_received,

        (SELECT COUNT(*) FROM Comments WHERE user_id = userId) AS total_comments;

END $$

DELIMITER ;

```

#### ▶️ Execute

```sql

CALL GetUserActivity(3);

```


---

### 🔹 Task 5: Challenge Query

#### 9. Most Influential User

```sql

SELECT 

    u.user_id,

    u.username,

    COUNT(DISTINCT l.like_id) + COUNT(DISTINCT c.comment_id) AS influence_score

FROM Users u

JOIN Posts p ON u.user_id = p.user_id

LEFT JOIN Likes l ON p.post_id = l.post_id

LEFT JOIN Comments c ON p.post_id = c.post_id

GROUP BY u.user_id, u.username

ORDER BY influence_score DESC

LIMIT 1;

```

---

## 📊 Key Insights

* Users with more posts tend to have higher engagement.

* Influence is driven by both likes and comments.

* Friend networks help identify content reach.

* Some users actively engage (likes/comments) without posting.


---

## 🧠 Skills Demonstrated

* SQL Joins (INNER, LEFT, SELF JOIN)

* Subqueries (Nested, Correlated)

* Aggregations (COUNT, AVG)

* Stored Procedures

* Real-world relational database design

---

## 🚀 Conclusion

This project demonstrates how SQL can be used to analyze social media data, extract insights, and measure user engagement effectively.

---
