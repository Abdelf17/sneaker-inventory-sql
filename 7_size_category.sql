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
