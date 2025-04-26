-- 📦 1_data_import.sql
-- This file documents how the sneaker data was originally loaded into MySQL
-- DO NOT re-run if the table already exists

-- Step 1: Create the table structure
CREATE TABLE shoes (
    product_name VARCHAR(255),
    size VARCHAR(10),
    shoe_condition VARCHAR(20),
    purchase_price DECIMAL(10,2),
    purchase_date DATE,
    purchase_source VARCHAR(100),
    sold_price DECIMAL(10,2),
    sold_date DATE,
    platform VARCHAR(100),
    payment_method VARCHAR(100),
    brand VARCHAR(100)
);

-- Step 2: Load the CSV file (assumes LOCAL INFILE is enabled)
-- Replace file path with your actual one

LOAD DATA LOCAL INFILE '/Users/yourname/Downloads/sneaker_data.csv'
INTO TABLE shoes
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(product_name, size, shoe_condition, purchase_price, purchase_date, purchase_source, sold_price, sold_date, platform, payment_method);
