🛒 UrbanCart Superstore Analysis — Sales, Product & Profitability Intelligence

## Problem Statement
Retail businesses often struggle to identify which regions, categories, and products are actually driving profit — vs those that look good on revenue but silently erode margins. This project analyzes UrbanCart's superstore data to uncover sales trends, customer behaviour, product performance, and profitability gaps across regions and categories.

---

## Tools Used

| Tool | Purpose |
|------|---------|
| MySQL | 15 KPI queries — sales trends, customer segmentation, regional contribution |
| Power BI | 5-page interactive dashboard with dynamic slicers and drill-through |

---

## Dataset
- **Source:** Sample Superstore Dataset (Kaggle)
- **Records:** 793 customers, 76K+ units sold
- **Total Sales:** ₹4.59M | **Total Profit:** ₹572.8K | **Profit Margin:** 0.12
- **Features:** Order ID, Order Date, Region, Category, Sub-Category, Product Name, Sales, Quantity, Discount, Profit, Ship Mode, Customer Segment

---

## Dashboard Pages

| Page | Focus |
|------|-------|
| Overview | KPI cards, Sales by Region, Profit by Category, Monthly Sales Trend |
| Sales Analysis | Avg Delivery Days, Ship Mode breakdown, Year-wise & Monthly trend |
| Product Analysis | Top 10 Products, Treemap by Sub-Category, Quantity vs Sales scatter |
| Customer Analysis | Segment-wise orders, Top Cities by Sales, Avg Sales per customer |
| Profitability | Profit Margin by Sub-Category, Discount vs Profit, Loss-Making SKUs |

---

## Key Findings

- **Technology** is the highest-profit category (₹0.29M) vs **Furniture at just ₹0.04M** — a 7x gap despite comparable sales volume
- **Consumer segment** drives **50.56% of total sales** (₹2.32M); Corporate accounts for 30.74%
- **West region leads** all 4 regions with ₹1.5M+ in revenue; South is the weakest region
- **Profit collapses at discounts above 0.32** — Discount vs Profit scatter plot reveals a clear negative correlation beyond this threshold
- **Average delivery time is 4.0 days**; Standard Class dominates ship mode volume
- Loss-making SKUs identified at product level — multiple Office Supplies and Furniture items flagged for margin review
- Sales peaked in **November–December** (₹0.65M–₹0.70M) and dropped sharply to ₹0.12M in February — strong seasonality pattern

---

## Business Recommendations

1. Cap discounts at 30% — data shows profit turns negative beyond 0.32 discount rate
2. Investigate Furniture category's low profit margin (₹0.04M) despite high sales volume
3. Double down on Technology — highest profit margin and growing demand
4. Focus retention efforts on Consumer segment (50%+ of revenue) through loyalty programs
5. Prioritize West and East regions for growth campaigns; South needs targeted intervention
6. Review and potentially discontinue identified loss-making SKUs to protect overall margins

---

## SQL KPIs Developed (15 Queries)

- Total sales, orders, quantity sold, and Average Order Value (AOV)
- Monthly and daily sales trends
- Top 5 products and Top 3 regions by sales
- Category-wise and sub-category sales breakdown
- Customer-wise total spend ranking
- **Repeat customer detection** using subquery (HAVING COUNT > 1)
- Region-wise monthly sales (multi-dimension grouping)
- **Sales contribution % by region** using window-style subquery
- Highest-selling product in each category

---

## Project Structure

```
UrbanCart-Retail/
├── superstore_data.csv               # Dataset
├── kpi_queries.sql                   # 15 SQL KPI queries
├── UrbanCart Dashboard.pbix          # Power BI dashboard file
├── Dashboard image.png               # Dashboard screenshot
└── README.md                         # Project documentation
```

---
