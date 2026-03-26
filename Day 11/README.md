# 📊 Insurance Claim Incident Analysis (Power BI Project)

## 🔍 Project Overview

This project analyzes insurance claim data to uncover patterns in claims, identify high-risk customer segments, and detect potential fraud cases. The goal is to provide actionable insights that help insurance companies improve decision-making, optimize pricing strategies, and reduce losses.


## 🎯 Objectives

* Analyze claim trends by state, incident type, and time

* Identify high-risk customer segments

* Detect fraud patterns in claims

* Evaluate relationship between policy features and claim outcomes

* Build an interactive Power BI dashboard for insights


## 📁 Dataset Description

The dataset includes the following key fields:

* Policy details: policy number, premium, deductible, umbrella limit

* Customer details: age, occupation, education

* Incident details: type, severity, location, hour

* Claim details: injury, property, vehicle claim amounts

* Fraud indicator: fraud reported (Yes/No)


## 🛠️ Tools & Technologies

* Power BI (Data Visualization)

* Excel / CSV (Data Source)

* DAX (Data Analysis Expressions)


## 🔄 Data Cleaning & Transformation

* Replaced "?" values with null and handled missing data

* Created new columns:

  * Total Claim = Injury + Property + Vehicle
  * Fraud Flag (1 = Yes, 0 = No)
  * Month & Year from incident date

* Ensured proper data types for accurate analysis

## 📐 Data Modeling

* Single-table model used

* Optimized column names and formats



## 📊 Dashboard Pages

### 1️⃣ Overview Dashboard

* KPIs: Total Claims, Total Claim Amount, Fraud Rate %, Avg Claim

* Claims by State (Bar Chart)

* Claim Trend Over Time (Line Chart)

* Fraud Distribution (Donut Chart)
  
<img width="1276" height="715" alt="image" src="https://github.com/user-attachments/assets/d458b4ad-8e3b-4fbe-be1a-f9ad5191f0ed" />


### 2️⃣ Customer Analysis

* Claims by Age, Occupation, Education

* Customer segmentation insights

<img width="1276" height="721" alt="image" src="https://github.com/user-attachments/assets/0daf787c-9ef9-43ca-bd88-fde07399d0cf" />


### 3️⃣ Incident Analysis

* Claims by Incident Type & Severity
* Claims by Hour of the Day

<img width="1281" height="723" alt="image" src="https://github.com/user-attachments/assets/1ab57ab8-b845-44d6-8733-b944687351c0" />


### 4️⃣ Fraud Analysis

* Fraud by State and Incident Type

* Fraud vs Claim Amount (Scatter Plot)

<img width="1278" height="717" alt="image" src="https://github.com/user-attachments/assets/c038e177-56be-45d7-91b8-6d4044f9f684" />


### 5️⃣ Policy Analysis

* Premium vs Claim Amount

* Deductible vs Claim Frequency

* Umbrella Limit vs Claim Amount

<img width="1275" height="717" alt="image" src="https://github.com/user-attachments/assets/59e453e5-f5fe-462d-820c-e0cc7f684ede" />


## 🔍 Key Insights

* Claims are concentrated in specific states and incident types

* Collision incidents generate the highest claims

* Customers with lower deductibles file more claims

* Fraud cases are associated with higher claim amounts

* Certain segments show high loss ratios, impacting profitability


## 💡 Recommendations

* Implement fraud detection systems using pattern analysis

* Introduce risk-based pricing for high-risk customers

* Encourage higher deductibles to reduce claim frequency

* Focus on high-claim regions for risk control

* Optimize policy structure to improve profitability


## 🚀 How to Use

1. Download the dataset

2. Open Power BI Desktop

3. Load the dataset and apply transformations

4. Create DAX measures

5. Build dashboard visuals as shown above


## 📌 Conclusion

This project demonstrates how data analytics and visualization can help insurance companies identify risks, detect fraud, and make data-driven business decisions.

