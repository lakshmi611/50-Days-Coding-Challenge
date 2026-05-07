# 🗳️ Recent Election Analysis Dashboard using Excel

## 📌 Project Overview

This project analyzes synthetic election data using **Microsoft Excel**.
The objective is to perform data cleaning, vote share analysis, party performance evaluation, gender analysis, age analysis, and create an interactive dashboard.

The project simulates a real-world election analysis scenario for a Data Analyst internship assignment.

---

# 📂 Dataset Information

The dataset contains **100 synthetic election records** with the following columns:

| Column Name  | Description                 |
| ------------ | --------------------------- |
| Constituency | Election constituency       |
| State        | State name                  |
| Party        | Political party             |
| Candidate    | Candidate name              |
| Votes        | Votes received              |
| Total_Votes  | Total votes in constituency |
| Gender       | Candidate gender            |
| Age          | Candidate age               |

---

# 🛠️ Tools Used

* Microsoft Excel
* Pivot Tables
* Charts
* Conditional Formatting
* Slicers
* Excel Functions

---

# 📊 Tasks Performed

## ✅ Task 1 — Data Cleaning

* Removed duplicates
* Checked numeric formatting
* Validated Total Votes consistency

### Functions Used

```excel
=COUNTIF()
=IF()
```

---

## ✅ Task 2 — Vote Share Calculation

Created Vote Percentage column:

```excel
=Votes/Total_Votes*100
```

---

## ✅ Task 3 — Winner Identification

Identified winners in each constituency using:

```excel
=MAXIFS()
=IF()
```

Created:

* Winner column
* Max Vote column

---

## ✅ Task 4 — Party Performance Analysis

Analyzed:

* Total votes by party
* Constituencies won by each party

Used:

* Pivot Tables
* SUM aggregation
* COUNT aggregation

---

## ✅ Task 5 — Gender Analysis

Analyzed:

* Male vs Female total votes
* Gender dominance trends

Visualization:

* Pie Chart

---

## ✅ Task 6 — Age Analysis

Calculated:

* Average age of winning candidates
* Youngest candidate
* Oldest candidate

Functions used:

```excel
=AVERAGEIF()
=MIN()
=MAX()
```

---

# 📈 Dashboard Features

The dashboard includes:

✅ KPI Cards

✅ Bar Chart → Party vs Total Votes

✅ Pie Chart → Gender Vote Share

✅ Winners Table

✅ Interactive Slicers

---

# 🧠 Advanced Analysis

## Winning Margin

Calculated using:

```excel
=WinnerVotes-RunnerUpVotes
```

---



# 📌 Key Insights

* XYZ party performed strongly in urban constituencies.
* Female candidates showed competitive performance in metro areas.
* Some constituencies had very close winning margins.
* Urban regions had higher voter participation.

---


# 📁 Project Files

| File                           | Description           |
| ------------------------------ | --------------------- |
| election_analysis_dataset.xlsx | Dataset               |
| Election_Dashboard.xlsx        | Final dashboard       |
| README.md                      | Project documentation |

---

# 🚀 Learning Outcomes

Through this project, I learned:

* Data Cleaning in Excel
* Pivot Tables
* Dashboard Design
* Election Data Analysis
* KPI Creation
* Interactive Reporting

