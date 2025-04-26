-- 📈 2_top_models.sql
-- Top 10 most sold sneaker models

SELECT product_name, COUNT(*) AS times_sold
FROM shoes
WHERE sold_price IS NOT NULL
GROUP BY product_name
ORDER BY times_sold DESC
LIMIT 10;
