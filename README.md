# Sneaker Inventory & Sales Analysis (SQL Project)

This project analyzes sneaker reselling data from start to finish — from initial cleanup to SQL-based analysis.  
Before building the database, the raw sales data needed formatting, standardization, and cleanup in Excel to make it ready for SQL querying.

Once cleaned, the data was imported into MySQL and analyzed using a series of raw SQL scripts to answer key business questions.


---

## Business Questions Answered
- What are the top-selling sneaker models?
- Which months had the highest and lowest sales?
- Are used or new shoes selling better overall?
- How do different size ranges perform (under size 7 vs above)?
- Which selling platforms and payment methods bring in the most sales?
- What is the Return on Investment (ROI) per sneaker and overall?
- How fast is inventory turning over month to month?

---

## Tools Used
- **MySQL** – for database management and querying
- **Excel** – for initial data cleanup and formatting
- *(Optional)* Tableau or Power BI for building visual dashboards

---

## File Overview

| File                           | Description                                       |
|--------------------------------|---------------------------------------------------|
| 1_data_import.sql              | Creates the table and loads the sneaker dataset   |
| 2_top_models.sql               | Lists the top-selling sneaker models              |
| 3_monthly_sales.sql            | Tracks sales totals by month                      |
| 4_best_month.sql               | Identifies the best month for sales               |
| 5_worst_month.sql              | Identifies the worst month for sales              |
| 6_used_vs_new.sql              | Compares used vs new sneaker sales                |
| 7_size_category.sql            | Analyzes sales by size category                   |
| 8_platform_sales.sql           | Compares sales across different selling platforms |
| 9_payment_method.sql           | Breaks down sales by payment method               |
| 10_unsold_inventory.sql        | Calculates the value and count of unsold inventory |
| 11_roi_analysis.sql            | Analyzes ROI per sneaker and averages             |
| 13_total_inventory_turnover.sql| Calculates overall inventory turnover             |
| 14_monthly_inventory_turnover.sql| Calculates monthly inventory turnover          |
| create_views.sql               | Creates reusable views for quicker analysis       |

---

## How to Use
- Run `1_data_import.sql` first to set up your table and load the data.
- After that, you can run any of the analysis scripts separately.

---

## Notes
- Make sure your data is formatted properly before running the import script.
- All queries are safe to run — no tables will be dropped or altered outside of what's needed.

---

Project built to practice SQL skills in a real-world scenario using sneaker resale data.  
Focused on clean querying, real business insights, and database organization — no unnecessary fluff.
