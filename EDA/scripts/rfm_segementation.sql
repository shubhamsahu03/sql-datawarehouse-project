WITH Recency_CTE AS (
    SELECT customer_key,
           DATEDIFF(DAY, MAX(order_date), GETDATE()) AS recency
    FROM gold.fact_sales
    GROUP BY customer_key
),
Frequency_CTE AS (
    SELECT customer_key,
           COUNT(DISTINCT order_id) AS frequency
    FROM gold.fact_sales
    GROUP BY customer_key
),
Monetary_CTE AS (
    SELECT customer_key,
           SUM(sales_amount) AS monetary
    FROM gold.fact_sales
    GROUP BY customer_key
)
SELECT 
    R.customer_key,
    R.recency,
    F.frequency,
    M.monetary,
    NTILE(4) OVER (ORDER BY R.recency DESC) AS R_Score,
    NTILE(4) OVER (ORDER BY F.frequency) AS F_Score,
    NTILE(4) OVER (ORDER BY M.monetary) AS M_Score
FROM Recency_CTE R
JOIN Frequency_CTE F ON R.customer_key = F.customer_key
JOIN Monetary_CTE M ON R.customer_key = M.customer_key;
