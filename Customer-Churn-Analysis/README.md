# 📊 Telco Customer Churn Analysis

## Problem Statement
A telecom company is losing customers every month, directly impacting revenue.
This project analyzes 7,000+ customer records to identify **why customers churn**,
**which segments are at highest risk**, and **what the business should do about it**.

## Tools Used
| Tool | Purpose |
|------|---------|
| MySQL | Data exploration & querying |
| Python (Pandas, Seaborn, Matplotlib) | Data cleaning & visualization |
| Power BI | Interactive dashboard |

## Dataset
- **Source:** IBM Telco Customer Churn — Kaggle
- **Records:** 7,043 customers
- **Features:** 21 columns including contract type, tenure, payment method, monthly charges

## Key Findings
1. Overall churn rate is **26.54%** — 1 in 4 customers is leaving
2. Month-to-month contract customers churn at **42.71%** vs 2-year contracts at **2.85%**
3. New customers (0–12 months) churn at **47.68%** — highest risk group
4. Electronic check users churn at **45.29%** vs auto-pay users at **~15%**
5. Senior citizens churn at **41.68%** vs **23.65%** for non-seniors

## Business Recommendations
1. Offer loyalty discounts to month-to-month customers to switch to annual contracts
2. Build a dedicated onboarding program for first 12 months to reduce early churn
3. Incentivize customers to switch from electronic check to automatic payment
4. Design senior-citizen-friendly plans with tech support included

## Project Structure
```
Telco-Customer-Churn-Analysis/
├── Telco-Customer-Churn.csv        # Dataset
├── Telecom_customer_churn.ipynb    # Python analysis
├── Churn Analysis Dashboard.pbix   # Power BI file
├── Dashboard image.png             # Dashboard screenshot
└── README.md                       # Project documentation
```
