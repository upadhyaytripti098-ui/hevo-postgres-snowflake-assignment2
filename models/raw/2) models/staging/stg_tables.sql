USE WAREHOUSE COMPUTE_WH;
USE DATABASE HEVO_DB;
USE SCHEMA PUBLIC;



CREATE OR REPLACE VIEW STG_CUSTOMERS AS
SELECT
  customer_id,
  TRIM(customer_name) AS customer_name,
  LOWER(TRIM(email)) AS email,
  TRIM(city) AS city,
  created_at
FROM CUSTOMERS_RAW;

CREATE OR REPLACE VIEW STG_ORDERS AS
SELECT
  order_id,
  customer_id,
  order_amount,
  order_date
FROM ORDERS_RAW;

CREATE OR REPLACE VIEW STG_PRODUCTS AS
SELECT
  product_id,
  TRIM(product_name) AS product_name,
  TRIM(category) AS category,
  price
FROM PRODUCTS_RAW;

CREATE OR REPLACE VIEW STG_COUNTRY_DIM AS
SELECT
  TRIM(city) AS city,
  TRIM(country) AS country,
  TRIM(region) AS region
FROM COUNTRY_DIM;


SELECT * FROM STG_CUSTOMERS;
SELECT * FROM STG_ORDERS;
SELECT * FROM STG_COUNTRY_DIM;
