# AtliQ Hardwares: SQL-Driven Sales & Product Analytics

A hands-on SQL analytics project that turns raw business data into insights for **AtliQ Hardwares**, a consumer electronics company operating across India and global markets. Ten business questions were answered using MySQL.

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Joins%20%7C%20CTEs%20%7C%20Window%20Functions-blue)
![Databricks](https://img.shields.io/badge/Databricks-Visuals-FF3621?style=flat&logo=databricks&logoColor=white)

---

## Problem Context

AtliQ Hardwares generates large volumes of sales and operational data but lacks a structured analytics layer for fast, informed decisions.

**Key business questions:**
- How is the product catalog evolving over time?
- Which product categories contribute most to growth?
- How does sales performance change across months and quarters?
- Is revenue dependent on specific channels or customers?
- Are discount strategies consistent across major clients?

## Objective

Bridge the gap between raw data and business decisions by:
- Structuring raw relational data
- Writing optimised SQL queries
- Extracting insights across products, markets and customers
- Supporting decisions with clear interpretation

## Dataset

| Table | Purpose |
|---|---|
| `fact_sales_monthly` | Monthly sales volume |
| `fact_gross_price` | Product pricing |
| `fact_manufacturing_cost` | Cost of production |
| `fact_pre_invoice_deductions` | Discount data |
| `dim_product` | Product hierarchy and segments |
| `dim_customer` | Customer and market information |

## Key Insights

| # | Question | Finding | Business implication |
|---|---|---|---|
| 1 | APAC presence | AtliQ operates in **8 APAC markets**: India, Indonesia, Japan, Philippines, South Korea, Australia, New Zealand and Bangladesh | Wide regional reach, with room for region-specific strategies |
| 2 | Product growth | Distinct products grew from **245 (2020) to 334 (2021), up 36.33%** | Fast catalog expansion needs matching inventory and supply planning |
| 3 | Product mix | **Notebook (129), Accessories (116) and Peripherals (84)** make up about **83% of the 397 products**. Networking has only 9 | The catalog is concentrated in a few segments |
| 4 | Growth by segment | **Accessories added the most new products (+34, from 69 to 103), 38% of the 89 added.** Desktop grew fastest in percentage terms (7 to 22) | Expansion is led by accessories, not balanced across segments |
| 5 | Cost range | Manufacturing cost ranges from **$0.89 (AQ Master wired x1 Ms) to $240.54 (AQ HOME Allin1 Gen 2)**, about **270 times** apart | Profitability will differ widely by product, so margin analysis matters |
| 6 | Discounts | The top 5 Indian customers get pre-invoice discounts of **29.33% to 30.83%** (Flipkart 30.83%, Viveks 30.38%, Ezone 30.28%, Croma 30.25%, Amazon 29.33%) | Discounts are high and consistent (about 30%), which can pressure margins |
| 7 | Monthly sales (AtliQ Exclusive) | Gross sales grew from **$79.5M to $224.4M (about 182%)** between fiscal years 2020 and 2021. **November is the peak** in both years ($15.2M and $32.2M) | Strong seasonality, so stock and campaigns should be planned around Q1 |
| 7 | Monthly sales (AtliQ Exclusive) | Sales fell from **$8.08M in February 2020 to $0.77M in March 2020 (about -90%)** and stayed under $1M in April | A sharp one-time drop, followed by a strong recovery |
| 8 | Quarterly sales | **Q1 (33.7%) and Q2 (32.0%)** account for about **66% of units sold**, while **Q3 is lowest at 10.0%** (2.08M units) | Demand is very uneven, so inventory and supply chain need quarter-wise planning |
| 9 | Channels | **Retailer contributes 73.22%** of gross sales, Direct 15.47% and Distributor 11.31% | Heavy reliance on retail partners; direct sales are a growth opportunity |
| 10 | Top products by division | In **N & S**, pen drives lead (about 701K units for the top product). In **P & A**, mice lead (about 428K units). In **PC**, the top products sell only about 17K units | Volume is driven by low-priced peripherals and storage, not PCs. The top 3 in each division sell very similar quantities |

## Queries and Outputs

| # | Business question | SQL | Output |
|---|---|---|---|
| 1 | Customers in the APAC region | [SQL](queries/01_Customers_in_APAC.sql) | [CSV](outputs/01_Customers_in_APAC.csv) |
| 2 | Distinct products | [SQL](queries/02_Distinct_Products.sql) | [CSV](outputs/02_Distinct_Products.csv) |
| 3 | Product count by segment | [SQL](queries/03_Segment_Product_Counts.sql) | [CSV](outputs/03_Segment_Product_Counts.csv) |
| 4 | Unique products: year-over-year difference | [SQL](queries/04_Unique_Products_Difference.sql) | [CSV](outputs/04_Unique_Products_Difference.csv) |
| 5 | Highest and lowest manufacturing cost | [SQL](queries/05_Manufacturing_Cost_High_Low.sql) | [CSV](outputs/05_Manufacturing_Cost_High_Low.csv) |
| 6 | Indian customers: average pre-invoice discount | [SQL](queries/06_India_Avg_PreInvoice_Discount.sql) | [CSV](outputs/06_India_Avg_PreInvoice_Discount.csv) |
| 7 | Monthly gross sales for AtliQ Exclusive | [SQL](queries/07_AtliQ_Exclusive_Monthly_Sales.sql) | [CSV](outputs/07_AtliQ_Exclusive_Monthly_Sales.csv) |
| 8 | Total sales by quarter | [SQL](queries/08_Quarterly_Sales.sql) | [CSV](outputs/08_Quarterly_Sales.csv) |
| 9 | Channel contribution (% of sales) | [SQL](queries/09_Channel_Contribution.sql) | [CSV](outputs/09_Channel_Contribution.csv) |
| 10 | Top 3 products in each division | [SQL](queries/10_Top3_Products_by_Division.sql) | [CSV](outputs/10_Top3_Products_by_Division.csv) |

## Skills Applied

- **SQL (MySQL):** inner, left and multi-table joins, CTEs and temporary tables, window functions, aggregations and grouping
- **Advanced SQL:** stored procedures, user-defined functions
- **Data structuring:** views for reusable logic
- **Visualisation:** Databricks for presenting insights

## Analytical Workflow

1. Understand the data and explore the schema
2. Design queries around each business question
3. Transform data using SQL
4. Extract insights
5. Visualise and interpret

## What I Learned

- Converting business problems into structured SQL queries
- Working with multi-table relational datasets
- Writing efficient, reusable SQL logic
- Interpreting data beyond the numbers to generate insights

## Limitations

- No profit or margin analysis
- No forecasting or predictive models
- No customer segmentation

This project focuses on descriptive and diagnostic analytics.

## Future Improvements

- Profitability analysis (revenue vs cost)
- Customer segmentation
- Forecasting and trend analysis
- Dashboard version: see my Power BI project, [Business Insights 360](https://github.com/Harishankar97/Business-Insights-360)

## Repository Structure

```
AtliQ-Hardwares-SQL-Driven-Sales-Product-Analytics/
├── queries/    # 10 SQL scripts, one per business question
├── outputs/    # CSV results of each query
└── README.md
```

## Acknowledgments

The business scenario (AtliQ Hardwares is an imaginary company) is from Codebasics.

## Connect With Me

**Harishankar** | [LinkedIn](https://lnkd.in/p/gAV9Zbun) | [GitHub](https://github.com/Harishankar97)
