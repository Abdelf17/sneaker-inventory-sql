SELECT 
  COUNT(*) AS total_inventory,
  SUM(CASE WHEN sold_price IS NOT NULL THEN 1 ELSE 0 END) AS total_sold,
  ROUND(SUM(CASE WHEN sold_price IS NOT NULL THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS turnover_percent
FROM shoes;