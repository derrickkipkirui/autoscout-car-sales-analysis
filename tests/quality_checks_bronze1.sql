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
FROM bronze1.outoscout24;
#checking for duplicates 
SELECT mileage,make,model,fuel,gear,offerType,price,hp,year,COUNT(*)
FROM bronze1.outoscout24
GROUP BY mileage,make,model,fuel,gear,offerType,price,hp,year
HAVING COUNT(*) > 1;

#checking null values
SELECT *
FROM bronze1.outoscout24
WHERE gear IS NULL OR gear = '';

SELECT *
FROM bronze1.outoscout24
WHERE model IS NULL OR model = '';

SELECT *
FROM bronze1.outoscout24
WHERE hp IS NULL OR hp = '';

SELECT *
FROM bronze1.outoscout24
WHERE mileage IS NULL OR mileage = '';

##checking values
SELECT DISTINCT fuel
FROM bronze1.outoscout24;

SELECT *
FROM bronze1.outoscout24
WHERE fuel = '-/- (Fuel)'
;

SELECT DISTINCT gear
FROM bronze1.outoscout24;

SELECT DISTINCT offerType
FROM bronze1.outoscout24;
