# 📊 Sales Data Analysis — End-to-End SQL Project

> Transforming raw retail transaction data into actionable business intelligence using structured SQL queries and analytical thinking.

![SQL](https://img.shields.io/badge/SQL-MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge)
![Domain](https://img.shields.io/badge/Domain-Retail%20Analytics-orange?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

---

## 📌 Project Objective

This project delivers a **complete SQL-based analytics workflow** on a retail sales dataset, answering key business questions across revenue, products, customers, stores, and time trends.

**Goals:**
- Analyze sales performance across products, customers, stores, and regions
- Identify high-value customers and top-performing products
- Detect loss-making products and profitability trends
- Generate data-driven insights for strategic business decisions

---

## 🗂️ Dataset Overview

The dataset contains structured retail sales data covering multiple business dimensions:

| Dimension | Attributes |
|---|---|
| 🛒 **Product** | Name, brand, category |
| 👤 **Customer** | Age, gender, loyalty membership |
| 🏬 **Store** | Store name, city, country, store type |
| 💳 **Transaction** | Quantity, price, discount, revenue, cost, profit |
| 📅 **Time** | Order date, year, month, week |

---

## 🏗️ Database Schema

```sql
TABLE: sales_data

┌─────────────────┬──────────────┬─────────────────────────────────────┐
│ Column          │ Type         │ Description                         │
├─────────────────┼──────────────┼─────────────────────────────────────┤
│ order_id        │ INT          │ Unique order identifier             │
│ order_date      │ DATE         │ Date of transaction                 │
│ customer_id     │ INT          │ Unique customer identifier          │
│ store_id        │ INT          │ Unique store identifier             │
│ product_id      │ INT          │ Unique product identifier           │
│ revenue         │ DECIMAL      │ Total revenue from transaction      │
│ cost            │ DECIMAL      │ Cost of goods sold                  │
│ profit          │ DECIMAL      │ Profit = Revenue - Cost             │
│ category        │ VARCHAR      │ Product category                    │
│ brand           │ VARCHAR      │ Product brand                       │
│ country         │ VARCHAR      │ Store country                       │
│ city            │ VARCHAR      │ Store city                          │
│ year            │ INT          │ Order year                          │
│ month           │ INT          │ Order month                         │
└─────────────────┴──────────────┴─────────────────────────────────────┘
```

---

## 📊 Analyses Performed

### 💰 Revenue & Profit Analysis
- Total revenue and profit calculation across the entire dataset
- Country-wise revenue distribution for regional benchmarking
- Identification of top-performing countries by revenue contribution

### 🛍️ Product Analysis
- Top 5 products by revenue
- Loss-making product detection (negative profit margin)
- Per-product profit margin analysis

### 👤 Customer Analysis
- Top 10 customers by revenue contribution
- High-value customer segmentation

### 🏬 Store Analysis
- Store-wise profit computation
- Profitability ranking using `RANK()` window function

### 📦 Category & Brand Analysis
- Category-level profit distribution
- Brand-wise quantity sold comparison

### 📅 Time-Based Analysis
- Monthly revenue trends at Year × Month granularity
- Sales performance tracking over time periods

### 🎯 Discount Impact Analysis
- Relationship between discount percentage and average profit

---

## 🛠️ SQL Concepts Demonstrated

| Concept | Usage |
|---|---|
| **Aggregation** | `SUM()`, `AVG()`, `COUNT()` for KPI calculations |
| **Grouping** | `GROUP BY` for dimensional breakdowns |
| **Filtering** | `HAVING` for post-aggregation filtering |
| **Sorting** | `ORDER BY` for rankings and trends |
| **Date Functions** | `EXTRACT()` for time-based analysis |
| **Window Functions** | `RANK() OVER()` for store profitability ranking |

---

## 📈 Key Business Insights

- 🏆 Identified top revenue-generating customers and products driving the majority of sales
- ⚠️ Detected specific products contributing to losses — flagged for pricing/inventory review
- 📉 Observed an inverse relationship between high discounts and profitability
- 📆 Uncovered seasonal revenue trends useful for forecasting and campaign planning
- 🏬 Ranked stores by profitability to surface underperforming locations

---

## 🚀 Getting Started

### Prerequisites
- MySQL 8.0+ (or compatible SQL engine)
- A SQL client: MySQL Workbench, DBeaver, or VS Code with SQL extension

### Setup

```bash
# 1. Clone the repository
git clone https://github.com/SAJLENDRAPANDEY/sales-data-analysis-sql.git
cd sales-data-analysis-sql

# 2. Import the dataset
mysql -u your_username -p your_database < dataset/sales_data.sql

# 3. Run the analysis queries
mysql -u your_username -p your_database < queries/analysis.sql
```

---

## 📁 Project Structure

```
sales-data-analysis-sql/
│
├── dataset/
│   └── sales_data.sql          # Raw dataset import script
│
├── queries/
│   ├── revenue_profit.sql      # Revenue & profit analysis
│   ├── product_analysis.sql    # Product-level insights
│   ├── customer_analysis.sql   # Customer segmentation
│   ├── store_analysis.sql      # Store ranking (window functions)
│   ├── category_brand.sql      # Category & brand breakdown
│   ├── time_analysis.sql       # Monthly revenue trends
│   └── discount_analysis.sql   # Discount impact on profit
│
├── insights/
│   └── key_findings.md         # Summary of business insights
│
└── README.md
```

---

## 🔥 Future Improvements

- [ ] 📊 Integrate with **Power BI / Tableau** for visual dashboards
- [ ] 🐍 Build a **Python (Pandas)** analysis pipeline alongside SQL
- [ ] 📈 Add advanced KPIs: **MoM growth**, **customer retention rate**
- [ ] 🤖 Implement **predictive modeling** for sales forecasting

---

## 🧑‍💻 Author

**Sajlendra Pandey**
B.Tech Computer Science (Data Science) — Maharshi Dayanand University

[![GitHub](https://img.shields.io/badge/GitHub-SAJLENDRAPANDEY-181717?style=flat-square&logo=github)](https://github.com/SAJLENDRAPANDEY)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-sajlendra--pandey-0A66C2?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/sajlendra-pandey-37378627b/)
[![Email](https://img.shields.io/badge/Email-sajlendrapandey2022@gmail.com-EA4335?style=flat-square&logo=gmail)](mailto:sajlendrapandey2022@gmail.com)

---

## ⭐ Support

If you found this project helpful or learned something from it, consider giving it a **star** — it means a lot and helps others discover the project!

---

<p align="center">
  Made with ❤️ and SQL by <a href="https://github.com/SAJLENDRAPANDEY">Sajlendra Pandey</a>
</p>
