-- Active vs churned customers
SELECT
  churn,
  COUNT(*) AS customers
FROM customers
GROUP BY churn;

