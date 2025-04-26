-- 📊 3_monthly_sales.sql
-- Monthly sales volume and profit

SELECT DATE_FORMAT(sold_date, '%Y-%m') AS month,
       COUNT(*) AS total_sales,
       ROUND(SUM(sold_price - purchase_price), 2) AS profit
FROM shoes
WHERE sold_price IS NOT NULL
GROUP BY month
ORDER BY month;
