-- Customer Order Count | Veda Technology - Data Analytics Track
-- Assumed table: orders(Order_ID, Customer_ID, Order_Date, Product, Quantity, Unit_Price)
-- Count DISTINCT Order_ID so multiple product lines in one order are not double-counted.

-- 1. Customer-wise order count
SELECT
    Customer_ID,
    COUNT(DISTINCT Order_ID) AS Unique_Order_Count
FROM orders
GROUP BY Customer_ID
ORDER BY Unique_Order_Count DESC, Customer_ID;

-- 2. Top 5 customers by number of orders
SELECT
    Customer_ID,
    COUNT(DISTINCT Order_ID) AS Unique_Order_Count
FROM orders
GROUP BY Customer_ID
ORDER BY Unique_Order_Count DESC, Customer_ID
FETCH FIRST 5 ROWS ONLY;

-- 3. Customer order count with spend (optional extension)
SELECT
    Customer_ID,
    COUNT(DISTINCT Order_ID) AS Unique_Order_Count,
    SUM(Quantity * Unit_Price) AS Total_Spend
FROM orders
GROUP BY Customer_ID
ORDER BY Unique_Order_Count DESC, Total_Spend DESC;

-- Note: FETCH FIRST 5 ROWS ONLY works in PostgreSQL/Oracle/DB2.
-- For MySQL or SQLite, replace that line with: LIMIT 5;
