# Telco Customer Churn Analysis

## Project Overview

Customer churn is one of the biggest challenges faced by telecom companies. Every lost customer results in recurring revenue loss and increased acquisition costs.

This project analyzes customer churn behavior using Python, SQL Server, and Tableau to identify the factors contributing to customer attrition and provide actionable business recommendations.

---

## Business Problem

A telecom company is experiencing customer churn and wants to understand:

* Which customer segments are most likely to churn
* Which services are associated with churn
* How churn impacts revenue
* What actions can improve customer retention

---

## Tools & Technologies

| Tool       | Purpose                   |
| ---------- | ------------------------- |
| Python     | Data Cleaning & EDA       |
| Pandas     | Data Manipulation         |
| NumPy      | Numerical Operations      |
| Matplotlib | Visualization             |
| Seaborn    | Visualization             |
| SQL Server | Business Analysis Queries |
| Tableau    | Dashboard Development     |

---

## Dataset Information

Dataset: Telco Customer Churn Dataset

Total Customers: 7,043

Features: 21 customer attributes including:

* Contract Type
* Internet Service
* Monthly Charges
* Tenure
* Tech Support
* Online Security
* Churn Status

---

## Data Cleaning

The following preprocessing steps were performed:

### Missing Value Handling

The TotalCharges column contained blank values.

```python
df['TotalCharges']=df['TotalCharges'].replace(' ',np.nan)
df['TotalCharges']=pd.to_numeric(df['TotalCharges'])
df['TotalCharges']=df['TotalCharges'].fillna(df['TotalCharges'].median())
```

### Duplicate Check

Dataset was checked for duplicate records.

### Column Standardization

Column names were converted to lowercase for consistency.

### Data Transformation

SeniorCitizen values were mapped:

| Original | Converted |
| -------- | --------- |
| 0        | No        |
| 1        | Yes       |

---

## Exploratory Data Analysis

The following analyses were performed:

### Churn Distribution

Analyzed overall customer churn rate.

### Contract vs Churn

Compared churn behavior across:

* Month-to-Month
* One Year
* Two Year

### Tenure vs Churn

Examined relationship between customer tenure and churn.

### Monthly Charges vs Churn

Analyzed impact of monthly charges on churn.

### Service Analysis

Investigated churn behavior across:

* Phone Service
* Internet Service
* Online Security
* Tech Support

### Correlation Analysis

Generated heatmap to identify relationships among numerical variables.

---

## SQL Analysis

Business queries were developed using SQL Server.

### Overall Churn Rate

Calculated:

* Total Customers
* Churned Customers
* Churn Percentage

### Revenue Loss

Estimated revenue loss from churned customers.

### Contract-Based Churn

Identified churn by contract type.

### Internet Service Analysis

Analyzed churn across internet service categories.

### Risk Segmentation

Identified high-risk customer groups based on:

* Contract Type
* Internet Service

---

## Tableau Dashboard

Dashboard Components:

### KPI Cards

* Total Customers
* Churn Rate
* Revenue Lost

### Visualizations

* Contract vs Churn
* Internet Service vs Churn
* Tech Support Impact
* Risk Heatmap

---

## Dashboard Preview

customer_churn_dashboard.png

---

## Key Findings

### Churn Rate

* Overall churn rate is 26.54%.

### Contract Type

* Month-to-month customers exhibit the highest churn.

### Internet Service

* Fiber optic customers contribute the largest number of churn cases.

### Technical Support

* Customers without technical support are more likely to churn.

### Revenue Impact

* Customer churn results in approximately ₹139K monthly revenue loss.

---

## Business Recommendations

### Promote Long-Term Contracts

Encourage customers to move from month-to-month plans to annual contracts.

### Improve Customer Retention Programs

Focus retention campaigns on high-risk customers.

### Strengthen Technical Support

Provide proactive support to customers lacking technical assistance.

### Target Fiber Optic Customers

Investigate dissatisfaction among fiber optic subscribers and implement service improvements.

---

## Project Workflow

```text
Dataset
   ↓
Data Cleaning (Python)
   ↓
Exploratory Data Analysis
   ↓
SQL Business Analysis
   ↓
Tableau Dashboard
   ↓
Business Recommendations
```


