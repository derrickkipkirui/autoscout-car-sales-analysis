/*
==========================================================================
DDL Script: Create gold1 table
==========================================================================
Script purpose:
This script creates table in the gold1 schema dropping existing table if they already exist.
Run this script to re-define the DDL structure of 'gold1' table.
its a clean, enriched, and businnes ready dataset

Usage
it can be quired directly for analytics and reporting
*/

DROP TABLE IF EXISTS gold1.autoscout24;
CREATE TABLE gold1.autoscout24(
mileage INT,
make VARCHAR(50),
model VARCHAR(50),
fuel VARCHAR(50),
gear VARCHAR(50),
offerType VARCHAR(50),
price INT,
horsepower INT,
price_per_ps DECIMAL,
year INT,
age_years INT);
