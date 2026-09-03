/*
===========================================================================================
Store procedure: Load Gold Layer (silver1 -> gold1)
============================================================================================
Script purpose:
This stored procedure perfomes the ETL(Extract, Transform, Load) process to populate the 'gold1'schema table from 'silver1' schema.
it perfoms the following action
  Trancates the gold1 table before loading data
  inserts,transformed and cleansed data from silver1 into gold1 table

Paramiters:
none
this stored procedure does not accept any paramiters or return any value.
*/


TRUNCATE TABLE gold1.outoscout24;
INSERT INTO gold1.autoscout24(
mileage ,
make ,
model ,
fuel ,
gear,
offerType ,
price ,
horsepower ,
price_per_ps,
year, 
age_years)
SELECT
mileage  ,
make ,
model ,
fuel ,
gear,
offerType ,
price ,
hp ,
ROUND (price/NULLIF(hP,0),2)AS price_per_ps,
year,
(2021 - year) AS age_years
FROM silver1.autoscout24
WHERE mileage IS NOT NULL
AND make IS NOT NULL
AND model IS NOT NULL 
AND fuel IS NOT NULL
AND gear IS NOT NULL
AND offerType  IS NOT NULL
AND price IS NOT NULL AND price > 0
AND year IS NOT NULL
AND hp IS NOT NULL AND hp > 0;
