-- 🛒 8_platform_sales.sql
-- Sales performance by selling platform

SELECT platform,
       COUNT(*) AS items_sold,
       ROUND(SUM(sold_price - purchase_price), 2) AS profit
FROM shoes
WHERE sold_price IS NOT NULL
GROUP BY platform
ORDER BY profit DESC;
