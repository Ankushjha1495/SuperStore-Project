# SuperStore-Project
Comprehensive US Superstore business performance analysis using MySQL advanced window functions, CTEs, and financial metric aggregations.
# 🏪 US Superstore Business Performance & Financial Analysis (SQL)

## 📌 Project Overview
This project delivers an end-to-end business performance analysis for a US-based retail Superstore dataset utilizing **MySQL**. The analysis uncovers high-impact financial insights across key business dimensions: overall profitability, regional growth, product category margins, customer lifetime value, and **Year-over-Year (YoY) revenue metrics** using advanced SQL queries.

---

## 🛠️ SQL Techniques & Concepts Applied
* **Advanced Window Functions:** Leveraged `LAG()` for time-series comparison and `ROW_NUMBER() OVER (PARTITION BY ...)` for localized ranking.
* **Common Table Expressions (CTEs):** Structured complex logic using `WITH` clauses to calculate modular data sets like yearly sales growth and state-wise top spending customers.
* **Date Transformation:** Standardized text-based transactional dates dynamically into database-compatible formats using `STR_TO_DATE()`.
* **Aggregations & Matrix Analytics:** Developed core business KPIs including Total Sales, Total Profit, and **Profit Margin Percentage** (`(SUM(Profit)/SUM(Sales))*100`).

---

## 📈 Key Business Metrics Explored

### 1. Macro-Level KPI Aggregation
* Computed aggregate metrics for high-level management: **Total Unique Orders**, **Total Revenue**, **Net Profit**, and **Overall Corporate Profit Margin Percentage**.

### 2. Time-Series & Growth Diagnostics
* **Yearly Trends:** Tracked long-term trajectories of sales and profit margins over multiple fiscal years.
* **YoY Sales Growth:** Utilized analytical window functions to measure exact percentage velocity shifts in revenue compared to previous calendar periods.

### 3. Segment & Category Diagnostics
* Grouped transactional volumes across **Product Categories** and **Sub-Categories** to prioritize high-margin divisions and identify bottom 5 loss-making items.
* Grouped operations by **US States** to isolate regional powerhouses from deficit territories.

### 4. Customer Behavior & Strategic Segmentation
* Evaluated customer bases by cumulative order counts, gross spend, and total net margin contribution percentage to identify high-value corporate accounts.
* Isolated and ranked the **Top 3 Premium Customers for every single state** to aid regional marketing hyper-targeting.

---

## 📂 Repository Structure
* `Superstore_Analysis.sql` (or upload your split script files here)
* `README.md`: Project documentation.
* `Superstore.csv`: Raw transactional underlying dataset.
