-- 📈 11_roi_analysis.sql
-- Return on Investment (ROI) per pair and average ROI overall

-- ROI per pair
SELECT product_name,
       purchase_price,
       sold_price,
       ROUND((sold_price - purchase_price) / purchase_price * 100, 2) AS ROI_percent
FROM shoes
WHERE sold_price IS NOT NULL;

