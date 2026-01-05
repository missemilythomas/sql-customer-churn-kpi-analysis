-- Churn rate by customer tenure group
SELECT
  CASE
    WHEN CAST(tenure_months AS INTEGER) < 6 THEN '0–6 months'
    WHEN CAST(tenure_months AS INTEGER) < 12 THEN '6–12 months'
    WHEN CAST(tenure_months AS INTEGER) < 24 THEN '1–2 years'
    ELSE '2+ years'
  END AS tenure_group,
  COUNT(*) AS customers,
  ROUND(
    SUM(CASE WHEN CAST(churn AS INTEGER) = 1 THEN 1 ELSE 0 END) * 1.0 / COUNT(*),
    3
  ) AS churn_rate
FROM customers
GROUP BY tenure_group;

