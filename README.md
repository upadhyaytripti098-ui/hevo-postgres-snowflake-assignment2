# hevo-postgres-snowflake-assignment2

# Assignment 2 – Data Modeling using Snowflake (Hevo Style)

## Objective
Build analytics-ready data models using Snowflake following Hevo-style modeling practices.

## Data Layers
- **Raw Layer**: Simulates raw ingestion output from Hevo
- **Staging Layer**: Cleans and standardizes raw data
- **Mart Layer**: Business-ready aggregated tables

## Tables Used
- RAW_CUSTOMERS
- RAW_ORDERS
- PRODUCTS_RAW (optional)
- COUNTRY_DIM (optional)

## Final Output
- CUSTOMER_ORDER_SUMMARY

## Modeling Approach
1. Raw tables store source data as-is
2. Staging views apply cleaning and standardization
3. Mart tables aggregate metrics for analytics

## SQL Structure
