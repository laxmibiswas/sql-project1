CREATE schema quary;
use quary;
SELECT*FROM mobile;

-- check mobile features and price list--

SELECT phone_name,price from mobile;

-- Find out price of most expensive phones--
SELECT*from mobile
order by price desc
limit 5;

-- Find out the price of 5 most cheapest phones--
SELECT *from mobile
order by price asc 
limit 5;

-- List of top 5 samsung phones with price and all features--
SELECT * from mobile
order by price desc
limit 5;
-- Must have android phone list then top 5 High price android phones--
SELECT*from mobile where operating_system_type ="Android"
order by price desc
limit 5 ;

-- Must have android phone list then top 5 lower price android phones--
SELECT*from mobile where operating_system_type = "Android"
order by price asc
limit 5;

-- Must have IOS phone list then top 5 high price IOS phones--
SELECT* from mobile where operating_system_type = "IOS"
order by price desc
limit 5;

-- Must have IOS phone list then top lower price IOS phones--
select* from mobile where operating_system_type = "IOS"
order by price asc
limit 5;
-- write a query which phone support 5g and also top 5 phone with 5g support--
select*from mobile where 5g_availability = "YES"
order by price desc
limit 5;

-- Total price of all mobile is to be found with brand name--
SELECT brands, sum(price) from mobile group by brands;
