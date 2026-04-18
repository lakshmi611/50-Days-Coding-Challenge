# 🚀 Day 30 – Data Structures Coding Challenge (Python)

---

## 📌 Overview

This repository contains solutions to **Day 30 Coding Challenges** focused on core **Data Structures in Python**:

* Strings
* Lists
* Tuples
* Dictionaries

Each problem is solved with **clean, optimized, and beginner-friendly code**.

---

## 🧠 Challenges & Solutions

---

### 🔤 1. Longest Substring Without Repeating Characters

#### 📖 Problem

Find the length of the longest substring without repeating characters.

#### 💻 Code

```python
def longest_substring(s):
    char_set = set()
    left = 0
    max_length = 0

    for right in range(len(s)):
        while s[right] in char_set:
            char_set.remove(s[left])
            left += 1
        
        char_set.add(s[right])
        max_length = max(max_length, right - left + 1)

    return max_length

print(longest_substring("abcabcbb"))
```

#### ✅ Output

```
3
```

#### ⚡ Concept Used

* Sliding Window Technique
* Set for uniqueness

---

### 📋 2. Remove Duplicates While Preserving Order

#### 📖 Problem

Remove duplicates from a list while maintaining order.

#### 💻 Code

```python
def remove_duplicates(lst):
    seen = set()
    result = []

    for num in lst:
        if num not in seen:
            seen.add(num)
            result.append(num)

    return result

print(remove_duplicates([1, 2, 2, 3, 4, 3, 5]))
```

#### ✅ Output

```
[1, 2, 3, 4, 5]
```

#### ⚡ Concept Used

* Set for tracking duplicates
* List for ordered output

---

### 🔢 3. Find Maximum and Minimum in Tuple

#### 📖 Problem

Find minimum and maximum values in a tuple.

#### 💻 Code

```python
def find_min_max(tpl):
    return min(tpl), max(tpl)

print(find_min_max((10, 5, 20, 8)))
```

#### ✅ Output

```
(5, 20)
```

#### ⚡ Concept Used

* Built-in functions (`min`, `max`)

---

### 📖 4. Character Frequency Counter

#### 📖 Problem

Count frequency of each character in a string.

#### 💻 Code

```python
def char_frequency(s):
    freq = {}

    for char in s:
        freq[char] = freq.get(char, 0) + 1

    return freq

print(char_frequency("programming"))
```

#### ✅ Output

```
{'p': 1, 'r': 2, 'o': 1, 'g': 2, 'a': 1, 'm': 2, 'i': 1, 'n': 1}
```

#### ⚡ Concept Used

* Dictionary
* `.get()` method

---

### 🚀 5. Group Words by Length (Intermediate)

#### 📖 Problem

Group words based on their length.

#### 💻 Code

```python
def group_by_length(words):
    result = {}

    for word in words:
        length = len(word)
        if length not in result:
            result[length] = []
        result[length].append(word)

    return result

print(group_by_length(["cat", "dog", "elephant", "bat", "tiger"]))
```

#### ✅ Output

```
{3: ['cat', 'dog', 'bat'], 8: ['elephant'], 5: ['tiger']}
```

#### ⚡ Concept Used

* Dictionary grouping
* Dynamic key creation

---

## 🏁 Conclusion

This challenge strengthens:

* Problem-solving skills
* Understanding of Python data structures
* Writing efficient and clean code

---
