-- Inspect schema and data types
PRAGMA table_info(customers);

-- Validate churn flag values
SELECT
  churn,
  COUNT(*) AS customers
FROM customers
GROUP BY churn;

-- Check tenure distribution
SELECT
  CAST(tenure_months AS INTEGER) AS tenure_months,
  COUNT(*) AS customers
FROM customers
GROUP BY CAST(tenure_months AS INTEGER)
ORDER BY tenure_months;

-- Validate contract type categories
SELECT
  contract_type,
  COUNT(*) AS customers
FROM customers
GROUP BY contract_type;
