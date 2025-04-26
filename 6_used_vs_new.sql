-- 👟 6_used_vs_new.sql
-- Comparison of used vs brand new shoe sales

SELECT shoe_condition,
       COUNT(*) AS total_sold,
       ROUND(SUM(sold_price - purchase_price), 2) AS profit
FROM shoes
WHERE sold_price IS NOT NULL
GROUP BY shoe_condition;
