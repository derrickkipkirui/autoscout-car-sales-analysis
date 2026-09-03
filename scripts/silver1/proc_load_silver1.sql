/*
===========================================================================================
Store procedure: Load Silver Layer (bronze1 -> silver1)
============================================================================================
Script purpose:
This stored procedure perfomes the ETL(Extract, Transform, Load) process to populate the 'silver1'schema table from bronze1 schema.
it perfoms the following action
  Trancates the silver1 table before loading data
  inserts,transformed and cleansed data from bronze1 into silver1 table

Paramiters:
none
this stored procedure does not accept any paramiters or return any value.
*/

TRUNCATE TABLE silver1.outoscout24;
INSERT INTO silver1.autoscout24(
mileage ,
make ,
model ,
fuel ,
gear,
offerType ,
price ,
hp ,
year )
SELECT
CASE WHEN mileage = 0 AND offerType = 'New' THEN 0
	 WHEN mileage = 0 AND offerType != 'New' THEN NULL
    ELSE mileage 
END AS mileage ,
make ,
CASE WHEN model = '' THEN NULL 
	ELSE model
END AS model ,
CASE WHEN fuel = '-/- (Fuel)' THEN NULL 
	ELSE fuel
END AS fuel,
CASE WHEN gear = '' THEN NULL
	ELSE gear
END AS gear,
offerType ,
price ,
CASE WHEN hp = '' THEN NULL
	ELSE hp
END AS hp ,
year
FROM (SELECT *,ROW_NUMBER()OVER(PARTITION BY mileage,make,model,fuel,gear,offerType,price,hp,year
ORDER BY mileage,make,model,fuel,gear,offerType,price,hp,year)AS row_num
FROM bronze1.outoscout24)T
WHERE row_num = 1;
