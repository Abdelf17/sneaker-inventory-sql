-- 📦 10_unsold_inventory.sql
-- How many unsold shoes, and how much money is tied up in them

SELECT COUNT(*) AS unsold_items,
       ROUND(SUM(purchase_price), 2) AS money_tied_up
FROM shoes
WHERE sold_price IS NULL;
