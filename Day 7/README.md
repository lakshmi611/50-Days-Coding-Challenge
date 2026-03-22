# 📊 Quality Control Dashboard – Power BI

## 📌 Overview

This project presents an interactive **Quality Control Dashboard** built using Power BI to monitor and analyze product defects in a manufacturing process. It helps stakeholders identify problem areas, track quality trends, and improve operational efficiency.

## 🎯 Objectives


* Monitor overall defect rate

* Identify top defective products

* Analyze defect trends over time

* Evaluate performance by production batch and inspectors

## 📂 Dataset Description

The dataset consists of two main tables:

### 🔹 Production Data

* ProductID

* BatchID

* Date

* Status (Pass / Fail)

### 🔹 Batch Information


* BatchID

* ProductionLine

* InspectorName


## 🛠️ Tools & Technologies

* Power BI

* Power Query (Data Cleaning & Transformation)

* Data Modeling


## 🔗 Data Modeling

* Established relationship between:

  * `Production[BatchID] → Batches[BatchID]`

* Enabled cross-table analysis for:

  * Production lines
  * Inspectors

---

## 📊 Dashboard Features

* 📌 **KPI Card**

  * Displays overall defect rate

* 📊 **Bar Chart**

  * Shows Top 5 products with highest defects

* 📈 **Line Chart**

  * Tracks defect rate trend over time

* 📋 **Matrix/Table**

  * Displays defect count by Production Line and Inspector

* 🎛️ **Slicer (Date Filter)**

  * Enables dynamic filtering across all visuals


## 📷 Dashboard Preview

<img width="1287" height="722" alt="image" src="https://github.com/user-attachments/assets/445892b4-5042-4286-ac8c-5a9ff87b7810" />


## 🔍 Key Insights

* A small number of products contribute significantly to total defects

* Defect trends help identify whether quality is improving or declining

* Certain production lines show consistently higher defect rates

* Variations across inspectors indicate inconsistencies in inspection


## 🚀 Business Impact

* Improves visibility into production quality

* Helps identify root causes of defects

* Enables data-driven decision-making

* Supports continuous improvement in manufacturing processes


## 📁 Project Files

* `Quality_Control_Dashboard.pbix`

* `production_data.csv`

* `batches_data.csv`


## 🙌 Conclusion

This dashboard transforms raw production data into meaningful insights, helping organizations improve quality control, reduce defects, and enhance overall efficiency.

