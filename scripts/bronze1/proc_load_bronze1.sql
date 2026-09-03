/*
===========================================================================================
Store procedure: Load Bronze Layer (source -> bronze1)
============================================================================================
Script purpose:
This stored procedure loads data into the 'bronze1'schema from external csv files.
it perfoms the following action
  Trancates the bronze1 table before loading data

Paramiters:
none
this stored procedure does not accept any paramiters or return any value.
*/

##loadind data

TRUNCATE TABLE bronze1.outoscout24;
LOAD DATA LOCAL INFILE 'C:\\Users\\USER\\Downloads\\archive (17)\\autoscout24-germany-dataset.csv'
INTO TABLE bronze1.outoscout24
FIELDS TERMINATED BY ','
ENCLOSED BY ""
IGNORE 1 ROWS;
