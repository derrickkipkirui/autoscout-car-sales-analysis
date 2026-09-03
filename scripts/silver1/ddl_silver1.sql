/*
==========================================================================
DDL Script: Create silver1 table
==========================================================================
Script purpose:
This script creates table in the silver1 schema dropping existing table if they already exist.
Run this script to re-define the DDL structure of 'silver1' table
*/

DROP TABLE IF EXISTS silver1.autoscout24;
CREATE TABLE silver1.autoscout24(
mileage INT,
make VARCHAR(50),
model VARCHAR(50),
fuel VARCHAR(50),
gear VARCHAR(50),
offerType VARCHAR(50),
price INT,
hp INT,
year INT);
