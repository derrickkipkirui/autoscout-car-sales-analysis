SELECT *
FROM gold1.autoscout24;
#checking for duplicates
#expectation : no duplicates
SELECT mileage,make,model,fuel,gear,offerType,price,horsepower,year,COUNT(*)
FROM gold1.autoscout24
GROUP BY mileage,make,model,fuel,gear,offerType,price,horsepower,year
HAVING COUNT(*) > 1;

#checking for null values
#expectations : no null values
SELECT *
FROM gold1.autoscout24
WHERE gear IS NULL or gear = '';

SELECT *
FROM gold1.autoscout24
WHERE model IS NULL or model = '';

SELECT *
FROM gold1.autoscout24
WHERE horsepower IS NULL OR horsepower = '';

SELECT *
FROM gold1.autoscout24
WHERE mileage IS NULL OR mileage = '';

SELECT DISTINCT fuel
FROM gold1.autoscout24;


SELECT DISTINCT gear
FROM gold1.autoscout24;


SELECT DISTINCT offerType
FROM gold1.autoscout24;

SELECT *
FROM gold1.autoscout24
WHERE offerType =  'New';

SELECT *
FROM gold1.autoscout24
WHERE price_per_ps =  0;

SELECT *
FROM gold1.autoscout24
WHERE age_years =  0;
