-- 💳 9_payment_method.sql
-- Breakdown of sales by payment method

SELECT payment_method,
       COUNT(*) AS transactions,
       ROUND(SUM(sold_price - purchase_price), 2) AS total_profit
FROM shoes
WHERE sold_price IS NOT NULL
GROUP BY payment_method
ORDER BY total_profit DESC;
