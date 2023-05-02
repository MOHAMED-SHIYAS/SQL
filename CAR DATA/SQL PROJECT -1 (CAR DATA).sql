CREATE DATABASE cardata;
use cardata;
SELECT * from cardata;
/* Display  cardetails seliing price less than 20000*/
SELECT * FROM cardata WHERE Selling_Price<=20000;
/* display cardetails kms driven below 8000*/
SELECT * from cardata WHERE Kms_Driven<8000;
/* display cardetails maximum selling price*/
SELECT Car_Name ,Selling_price FROM cardata WHERE Selling_Price in (SELECT max(Selling_Price) FROM cardata);
/*display cardetails maximum number of vehicle regarding fueltype*/
SELECT Fuel_Type, COUNT(*) FROM cardata GROUP BY Fuel_Type;
/*display cardetails average selling price regarding fuel type*/
SELECT Fuel_Type, AVG(Selling_Price) FROM cardata GROUP BY Fuel_Type;
/*display cardetails where year = 2015 and selling price =10000 and 20000*/
SELECT * FROM cardata WHERE year =2015 and Selling_Price BETWEEN 10000 and 20000;
/*display cardetails where transmission = automatic*/
SELECT * FROM cardata WHERE Transmission = 'Automatic';
/*display from carname which sellertype is dealer*/
SELECT Car_Name  FROM cardata WHERE Seller_Type like '%Dealer%';
/* display minimum year of vehicle*/
SELECT MIN(Year) FROM cardata; 

