# Customer Order Count Analysis

## Veda Technology – Data Analytics Internship
**Task 20: Customer Order Count**

### 1. Project Overview
This project focuses on analyzing customer purchasing behaviour by counting the number of unique orders placed by each customer. It also identifies frequent buyers based on their order frequency.

### 2. Objective
- Count the total unique orders per customer.
- Identify frequent and repeat customers.
- Understand basic customer purchasing behaviour.
- Organize and analyze customer order data.

### 3. Tools & Technologies
- Microsoft Excel
- SQL

### 4. Dataset Description
The dataset contains customer order information, including:
- Order ID
- Customer ID
- Order Date
- Product
- Quantity
- Unit Price

### 5. Project Deliverables
**Customer Order Table**
- Customer-wise unique order count.
- Total spending per customer.
- Latest order date.
- Buyer classification.

**Top Customers**
- Identification of customers with the highest number of orders.
- Customer ranking based on order frequency.

### 6. Methodology
1. Import and organize the order dataset.
2. Group records using Customer ID.
3. Count unique Order IDs to avoid duplicate order counting.
4. Calculate customer-wise order frequency.
5. Identify the top customers.
6. Present the results using Excel tables and charts.

### 7. SQL Query

```sql
SELECT
    Customer_ID,
    COUNT(DISTINCT Order_ID) AS Unique_Order_Count
FROM orders
GROUP BY Customer_ID
ORDER BY Unique_Order_Count DESC;
```

### 8. Key Learning Outcomes
- Understanding customer purchasing patterns.
- Working with Excel tables and formulas.
- Using SQL GROUP BY.
- Applying COUNT(DISTINCT) to avoid duplicate records.
- Identifying frequent buyers through data analysis.

### 9. Conclusion
The Customer Order Count project demonstrates how Excel and SQL can be used to analyze customer order patterns, identify frequent buyers, and generate meaningful insights from structured data.

---

**Project:** Customer Order Count  
**Organization:** Veda Technology  
**Track:** Data Analytics Internship  
**Task:** 20
