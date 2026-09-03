/*
==========================================================================
DDL Script: Create bronze1 table
==========================================================================
Script purpose:
This script creates table in the bronze1 schema dropping existing table if they already exist.
Run this script to re-define the DDL structure of 'bronze1' table
*/

##Creating table

DROP TABLE IF EXISTS bronze1.autoscout24;
CREATE TABLE bronze1.outoscout24(
mileage INT,
make VARCHAR(50),
model VARCHAR(50),
fuel VARCHAR(50),
gear VARCHAR(50),
offerType VARCHAR(50),
price INT,
hp INT,
year INT);
