-- Use your context
USE WAREHOUSE COMPUTE_WH;
USE DATABASE HEVO_DB;
USE SCHEMA PUBLIC;

-- 1) RAW TABLES (simulate Hevo raw ingestion output)

CREATE OR REPLACE TABLE CUSTOMERS_RAW (
  customer_id INT,
  customer_name STRING,
  email STRING,
  city STRING,
  created_at TIMESTAMP
);

CREATE OR REPLACE TABLE ORDERS_RAW (
  order_id INT,
  customer_id INT,
  order_amount NUMBER(12,2),
  order_date DATE
);

CREATE OR REPLACE TABLE PRODUCTS_RAW (
  product_id INT,
  product_name STRING,
  category STRING,
  price NUMBER(12,2)
);

CREATE OR REPLACE TABLE COUNTRY_DIM (
  city STRING,
  country STRING,
  region STRING
);

-- 2) INSERT SAMPLE DATA

INSERT INTO CUSTOMERS_RAW VALUES
(1, 'Alice',   'alice@gmail.com',   'Bangalore', CURRENT_TIMESTAMP),
(2, 'Bob',     'bob@gmail.com',     'Pune',      CURRENT_TIMESTAMP),
(3, 'Charlie', 'charlie@gmail.com', 'Mumbai',    CURRENT_TIMESTAMP);

INSERT INTO ORDERS_RAW VALUES
(101, 1, 2500.00, '2026-01-01'),
(102, 1, 1800.00, '2026-01-02'),
(103, 2, 3200.00, '2026-01-02'),
(104, 3, 1500.00, '2026-01-03');

INSERT INTO PRODUCTS_RAW VALUES
(201, 'iPhone Case',   'Accessories', 999.00),
(202, 'Bluetooth Earbuds', 'Electronics', 2999.00),
(203, 'Notebook',      'Stationery',  120.00);

INSERT INTO COUNTRY_DIM VALUES
('Bangalore', 'India', 'South'),
('Pune',      'India', 'West'),
('Mumbai',    'India', 'West');

-- Quick validation
SELECT * FROM CUSTOMERS_RAW;
SELECT * FROM ORDERS_RAW;
SELECT * FROM PRODUCTS_RAW;
SELECT * FROM COUNTRY_DIM;
