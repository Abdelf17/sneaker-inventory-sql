-- 📄 create_views.sql
-- This file creates SQL views from your saved queries.

CREATE OR REPLACE VIEW top_models AS
-- 📈 2_top_models.sql
-- Top 10 most sold sneaker models

SELECT product_name, COUNT(*) AS times_sold
FROM shoes
WHERE sold_price IS NOT NULL
GROUP BY product_name
ORDER BY times_sold DESC
LIMIT 10;
;

CREATE OR REPLACE VIEW monthly_sales AS
-- 📊 3_monthly_sales.sql
-- Monthly sales volume and profit

SELECT DATE_FORMAT(sold_date, '%Y-%m') AS month,
       COUNT(*) AS total_sales,
       ROUND(SUM(sold_price - purchase_price), 2) AS profit
FROM shoes
WHERE sold_price IS NOT NULL
GROUP BY month
ORDER BY month;
;

CREATE OR REPLACE VIEW best_month AS
-- 🥇 4_best_month.sql
-- Month with the most sales

SELECT DATE_FORMAT(sold_date, '%Y-%m') AS month,
       COUNT(*) AS total_sales
FROM shoes
WHERE sold_price IS NOT NULL
GROUP BY month
ORDER BY total_sales DESC
LIMIT 1;
;

CREATE OR REPLACE VIEW worst_month AS
-- 🥶 5_worst_month.sql
-- Month with the fewest sales

SELECT DATE_FORMAT(sold_date, '%Y-%m') AS month,
       COUNT(*) AS total_sales
FROM shoes
WHERE sold_price IS NOT NULL
GROUP BY month
ORDER BY total_sales ASC
LIMIT 1;
;

CREATE OR REPLACE VIEW used_vs_new AS
-- 👟 6_used_vs_new.sql
-- Comparison of used vs brand new shoe sales

SELECT shoe_condition,
       COUNT(*) AS total_sold,
       ROUND(SUM(sold_price - purchase_price), 2) AS profit
FROM shoes
WHERE sold_price IS NOT NULL
GROUP BY shoe_condition;
;

CREATE OR REPLACE VIEW size_category AS
-- 📐 7_size_category.sql
-- Sales by size category (< 7 vs ≥ 7)

SELECT
  CASE
    WHEN size IN ('4Y','5Y','6Y','6.5Y','7Y','7W','6','6.5','5.5','5','4.5','4','5Y','5.5Y') THEN 'Under Size 7'
    ELSE 'Size 7 or Above'
  END AS size_group,
  COUNT(*) AS total_sold,
  ROUND(SUM(sold_price - purchase_price), 2) AS profit
FROM shoes
WHERE sold_price IS NOT NULL
GROUP BY size_group;
;

CREATE OR REPLACE VIEW platform_sales AS
-- 🛒 8_platform_sales.sql
-- Sales performance by selling platform

SELECT platform,
       COUNT(*) AS items_sold,
       ROUND(SUM(sold_price - purchase_price), 2) AS profit
FROM shoes
WHERE sold_price IS NOT NULL
GROUP BY platform
ORDER BY profit DESC;
;

CREATE OR REPLACE VIEW payment_method AS
-- 💳 9_payment_method.sql
-- Breakdown of sales by payment method

SELECT payment_method,
       COUNT(*) AS transactions,
       ROUND(SUM(sold_price - purchase_price), 2) AS total_profit
FROM shoes
WHERE sold_price IS NOT NULL
GROUP BY payment_method
ORDER BY total_profit DESC;
;

CREATE OR REPLACE VIEW unsold_inventory AS
-- 📦 10_unsold_inventory.sql
-- How many unsold shoes, and how much money is tied up in them

SELECT COUNT(*) AS unsold_items,
       ROUND(SUM(purchase_price), 2) AS money_tied_up
FROM shoes
WHERE sold_price IS NULL;
;

CREATE OR REPLACE VIEW roi_analysis AS
-- 📈 11_roi_analysis.sql
-- Return on Investment (ROI) per pair and average ROI overall

-- ROI per pair
SELECT product_name,
       purchase_price,
       sold_price,
       ROUND((sold_price - purchase_price) / purchase_price * 100, 2) AS ROI_percent
FROM shoes
WHERE sold_price IS NOT NULL;
;

CREATE OR REPLACE VIEW monthly_inventory_turnover AS
SELECT 
  DATE_FORMAT(sold_date, '%Y-%m') AS sale_month,
  COUNT(*) AS pairs_sold,
  ROUND(COUNT(*) / (SELECT COUNT(*) FROM shoes) * 100, 2) AS turnover_percent
FROM shoes
WHERE sold_price IS NOT NULL
GROUP BY sale_month
ORDER BY sale_month;
;

CREATE OR REPLACE VIEW total_inventory_turnover AS
SELECT 
  COUNT(*) AS total_inventory,
  SUM(CASE WHEN sold_price IS NOT NULL THEN 1 ELSE 0 END) AS total_sold,
  ROUND(SUM(CASE WHEN sold_price IS NOT NULL THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS turnover_percent
FROM shoes;
;

