WITH product_monthly_sales AS (
    SELECT 
        product_key,
        FORMAT(order_date, 'yyyy-MM') AS sales_month,
        SUM(quantity) AS total_units_sold,
        SUM(sales_amount) AS total_sales
    FROM gold.fact_sales
    GROUP BY product_key, FORMAT(order_date, 'yyyy-MM')
),
ranked_sales AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY product_key ORDER BY sales_month ASC) AS month_rank
    FROM product_monthly_sales
)
SELECT 
    product_key,
    sales_month,
    total_units_sold,
    total_sales,
    CASE 
        WHEN month_rank = 1 THEN 'Introduction'
        WHEN month_rank BETWEEN 2 AND 4 THEN 'Growth'
        WHEN month_rank BETWEEN 5 AND 7 THEN 'Maturity'
        ELSE 'Decline'
    END AS lifecycle_stage
FROM ranked_sales
ORDER BY product_key, sales_month;
