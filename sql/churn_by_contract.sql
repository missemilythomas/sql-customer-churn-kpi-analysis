-- Churn rate by contract type
SELECT
  contract_type,
  COUNT(*) AS customers,
  ROUND(
    SUM(CASE WHEN CAST(churn AS INTEGER) = 1 THEN 1 ELSE 0 END) * 1.0 / COUNT(*),
    3
  ) AS churn_rate
FROM customers
GROUP BY contract_type
ORDER BY churn_rate DESC;

