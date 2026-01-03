USE WAREHOUSE COMPUTE_WH;
USE DATABASE HEVO_DB;
USE SCHEMA PUBLIC;


CREATE OR REPLACE TABLE CUSTOMER_ORDER_SUMMARY AS
SELECT
  c.customer_id,
  c.customer_name,
  c.city,
  d.country,
  d.region,
  COUNT(o.order_id) AS total_orders,
  SUM(o.order_amount) AS total_order_amount,
  MIN(o.order_date) AS first_order_date,
  MAX(o.order_date) AS last_order_date
FROM STG_CUSTOMERS c
LEFT JOIN STG_ORDERS o
  ON c.customer_id = o.customer_id
LEFT JOIN STG_COUNTRY_DIM d
  ON c.city = d.city
GROUP BY
  c.customer_id, c.customer_name, c.city, d.country, d.region
ORDER BY
  total_order_amount DESC;

SELECT * FROM CUSTOMER_ORDER_SUMMARY;
