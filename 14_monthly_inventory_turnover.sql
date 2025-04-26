SELECT 
  DATE_FORMAT(sold_date, '%Y-%m') AS sale_month,
  COUNT(*) AS pairs_sold,
  ROUND(COUNT(*) / (SELECT COUNT(*) FROM shoes) * 100, 2) AS turnover_percent
FROM shoes
WHERE sold_price IS NOT NULL
GROUP BY sale_month
ORDER BY sale_month;