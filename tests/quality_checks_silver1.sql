/*
=============================================================================================
Quality checks
=============================================================================================
Script purpose:
This script performs various quality checks for data consistency,acuracy.
It includes checks for null or duplicates 
unwanted spaces and data consistency

Usage notes:
Run these checks after data loading

*/

SELECT *
FROM silver1.autoscout24;

#checking for Duplicates
SELECT mileage,make,model,fuel,gear,offerType,price,hp,year,COUNT(*)
FROM silver1.autoscout24
GROUP BY mileage,make,model,fuel,gear,offerType,price,hp,year
HAVING COUNT(*) > 1;

#checking for null values
SELECT *
FROM silver1.autoscout24
WHERE gear IS NULL or gear = '';

SELECT *
FROM silver1.autoscout24
WHERE model IS NULL or model = '';

SELECT *
FROM silver1.autoscout24
WHERE hp IS NULL OR hp = '';

SELECT *
FROM silver1.autoscout24
WHERE mileage IS NULL OR mileage = '';

##checking values
SELECT DISTINCT fuel
FROM silver1.autoscout24;


SELECT DISTINCT gear
FROM silver1.autoscout24;

SELECT DISTINCT offerType
FROM silver1.autoscout24;

SELECT *
FROM silver1.autoscout24
WHERE offerType =  'New';
