-- =====================================================
-- 📊 SALES DATA ANALYSIS PROJECT (SQL)
-- Author: Sajlendra Pandey
-- Description: End-to-end SQL analysis on retail sales data
-- =====================================================


-- ================================
-- 🏗️ TABLE CREATION
-- ================================
CREATE TABLE sales_data (
    order_id TEXT PRIMARY KEY,
    order_date DATE,
    
    product_id TEXT,
    store_id TEXT,
    customer_id TEXT,
    
    quantity INT,
    unit_price FLOAT,
    discount FLOAT,
    revenue FLOAT,
    cost FLOAT,
    profit FLOAT,
    
    product_name VARCHAR(100),
    brand VARCHAR(100),
    category VARCHAR(100),
    
    cocoa_percent INT,
    weight_g INT,
    
    age INT,
    gender VARCHAR(20),
    loyalty_member SMALLINT,
    join_date DATE,
    
    store_name VARCHAR(100),
    city VARCHAR(100),
    country VARCHAR(100),
    store_type VARCHAR(100),
    
    date DATE,
    year INT,
    month INT,
    day INT,
    week INT,
    day_of_week INT,
    
    profit_flag VARCHAR(20),
    profit_margin FLOAT
);


-- ================================
-- 💰 BASIC KPIs
-- ================================

-- Total Revenue
SELECT SUM(revenue) AS total_revenue FROM sales_data;

-- Total Profit
SELECT SUM(profit) AS total_profit FROM sales_data;

-- Unique Countries
SELECT COUNT(DISTINCT country) AS unique_country FROM sales_data;


-- ================================
-- 🌍 COUNTRY ANALYSIS
-- ================================

-- Country-wise Revenue
SELECT country, SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY country
ORDER BY total_revenue DESC;

-- Top Country by Profit
SELECT country
FROM sales_data
GROUP BY country
ORDER BY SUM(profit) DESC
LIMIT 1;


-- ================================
-- 🛍️ PRODUCT ANALYSIS
-- ================================

-- Top 5 Products by Revenue
SELECT product_name, SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 5;

-- Loss Making Products
SELECT product_name
FROM sales_data
GROUP BY product_name
HAVING SUM(profit) < 0;

-- Profit Margin by Product
SELECT product_name,
       (SUM(profit) / SUM(revenue) * 100) AS profit_margin
FROM sales_data
GROUP BY product_name
ORDER BY profit_margin DESC;


-- ================================
-- 📦 CATEGORY ANALYSIS
-- ================================

-- Category-wise Profit
SELECT category, SUM(profit) AS category_profit
FROM sales_data
GROUP BY category;


-- ================================
-- 🎯 DISCOUNT ANALYSIS
-- ================================

-- Discount Impact on Profit
SELECT discount, AVG(profit) AS avg_profit
FROM sales_data
GROUP BY discount
ORDER BY discount;


-- ================================
-- 📅 TIME-BASED ANALYSIS
-- ================================

-- Monthly Revenue Trend
SELECT EXTRACT(year FROM order_date) AS year,
       EXTRACT(month FROM order_date) AS month,
       SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY EXTRACT(year FROM order_date),
         EXTRACT(month FROM order_date)
ORDER BY year, month;


-- ================================
-- 👤 CUSTOMER ANALYSIS
-- ================================

-- Top 10 Customers by Revenue
SELECT customer_id,
       SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY customer_id
ORDER BY total_revenue DESC
LIMIT 10;


-- ================================
-- 🏬 STORE ANALYSIS
-- ================================

-- Store-wise Profit Ranking
SELECT store_id,
       SUM(profit) AS total_profit,
       RANK() OVER (ORDER BY SUM(profit) DESC) AS rank
FROM sales_data
GROUP BY store_id;


-- ================================
-- 🏷️ BRAND ANALYSIS
-- ================================

-- Brand-wise Quantity Sold
SELECT brand,
       SUM(quantity) AS total_quantity
FROM sales_data
GROUP BY brand
ORDER BY total_quantity DESC;


-- ================================
-- 🔍 DATA PREVIEW
-- ================================

SELECT * FROM sales_data LIMIT 10;

-- ================================
-- ✅ END OF PROJECT
-- ================================
