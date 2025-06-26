WITH first_purchase AS (
    SELECT 
        customer_key,
        MIN(CAST(order_date AS DATE)) AS first_purchase_date
    FROM gold.fact_sales
    GROUP BY customer_key
),
cohorts AS (
    SELECT 
        fs.customer_key,
        FORMAT(fp.first_purchase_date, 'yyyy-MM') AS cohort_month,
        FORMAT(fs.order_date, 'yyyy-MM') AS active_month
    FROM gold.fact_sales fs
    JOIN first_purchase fp ON fs.customer_key = fp.customer_key
),
cohort_retention AS (
    SELECT 
        cohort_month,
        active_month,
        COUNT(DISTINCT customer_key) AS active_customers
    FROM cohorts
    GROUP BY cohort_month, active_month
)
SELECT 
    cohort_month,
    active_month,
    active_customers,
    DATEDIFF(
        MONTH,
        TRY_CAST(cohort_month + '-01' AS DATE),
        TRY_CAST(active_month + '-01' AS DATE)
    ) AS months_since_signup
FROM cohort_retention
ORDER BY cohort_month, active_month;
