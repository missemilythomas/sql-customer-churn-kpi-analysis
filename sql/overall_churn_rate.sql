
-- Overall customer churn rate
SELECT
  ROUND(
    SUM(CASE WHEN CAST(churn AS INTEGER) = 1 THEN 1 ELSE 0 END) * 1.0 / COUNT(*),
    3
  ) AS churn_rate
FROM customers;
