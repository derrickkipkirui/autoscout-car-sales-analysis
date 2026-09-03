/*
Gold Layer - Exploratory Data Analysis
Project: autoscout car sales analysis
Discription: Key business insight from gold1 layer
*/

SELECT *
FROM gold1.autoscout24;
/*most expensive car*/

SELECT make,model,fuel,gear,offerType,price,horsepower,year
FROM gold1.autoscout24
ORDER BY price DESC
LIMIT 1;


/*most cheapest car*/
SELECT make,model,fuel,gear,offerType,price,horsepower,year
FROM gold1.autoscout24
ORDER BY price ASC
LIMIT 1;


/*what will be the total make sales*/
SELECT COUNT(make) AS total_cars
FROM gold1.autoscout24;


/*average price*/
SELECT ROUND(AVG (price),2) AS avg_price
FROM gold1.autoscout24;



/*what will be the total revenue*/
SELECT SUM(price) AS total_revenue
FROM gold1.autoscout24;


/*total cars by make*/
SELECT make,COUNT(*)AS no_of_cars
FROM gold1.autoscout24
GROUP BY make
ORDER BY no_of_cars DESC;

/*total cars by make on specific model*/
SELECT make,model,COUNT(*)AS no_of_cars
FROM gold1.autoscout24
GROUP BY make,model
ORDER BY no_of_cars DESC;

/*total cars by type of gear*/
SELECT gear,COUNT(*)AS no_of_cars
FROM gold1.autoscout24
GROUP BY gear
ORDER BY no_of_cars DESC;

/*total make cars on specific model by type of gear*/
SELECT make,model,gear,COUNT(*)AS no_of_cars
FROM gold1.autoscout24
GROUP BY make,model,gear
ORDER BY no_of_cars DESC;


/*total cars by offertype*/
SELECT offerType,COUNT(*)AS no_of_cars
FROM gold1.autoscout24
GROUP BY offerType
ORDER BY no_of_cars DESC;


/*total cars by fuel type*/
SELECT fuel,COUNT(*)AS no_of_cars
FROM gold1.autoscout24
GROUP BY fuel
ORDER BY no_of_cars DESC;


/*make that will be with highest revenue*/
SELECT make,sum(price)AS total_revenue
FROM gold1.autoscout24
GROUP BY make
ORDER BY total_revenue DESC;


/*make and specific model that has most cars*/
SELECT make,model,COUNT(*)AS no_of_cars
FROM gold1.autoscout24
GROUP BY make,model
ORDER BY no_of_cars DESC
LIMIT 1;

/*make by year made*/
SELECT year,COUNT(*)AS total_cars
FROM gold1.autoscout24
GROUP BY year
ORDER BY year;



/*which geartype will contribute most to ovaral sales*/
SELECT gear,COUNT(*)AS total_cars,SUM(price) AS total_revenue
FROM gold1.autoscout24
GROUP BY gear
ORDER BY total_revenue DESC;



