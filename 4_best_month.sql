-- 🥇 4_best_month.sql
-- Month with the most sales

SELECT DATE_FORMAT(sold_date, '%Y-%m') AS month,
       COUNT(*) AS total_sales
FROM shoes
WHERE sold_price IS NOT NULL
GROUP BY month
ORDER BY total_sales DESC
LIMIT 1;
