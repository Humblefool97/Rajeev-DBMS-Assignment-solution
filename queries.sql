-- How many females and how many male passengers travelled for a minimum distance of
-- 600 KM s?
select 
sum(case when gender = 'M' then 1 end) as male_count,
sum(case when gender = 'F' then 1 end) as female_count
from passenger
where distance >= 600;

-- 4) Find the minimum ticket price for Sleeper Bus. 
select min(price) from Price where bus_type = 'Sleeper';

-- Select passenger names whose names start with character 'S' 
select passenger_name from Passenger where passenger_name like 'S%';

-- Calculate price charged for each passenger displaying Passenger name, Boarding City,
-- Destination City, Bus_Type, Price in the output
select Passenger.*, Price.price  from passenger 
join Price on passenger.bus_type = price.bus_type and passenger.distance = price.distance; 

-- What is the passenger name and his/her ticket price who travelled in Sitting bus for a
-- distance of 1000 KM s 
select passenger_name,price from Passenger,Price where Price.distance = 1000 and Passenger.distance = 1000 and passenger.bus_type = price.bus_type;

-- What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to
-- Panaji?
select bus_type, price from price where distance = (select distance from passenger where passenger_name = 'Pallavi');

-- List the distances from the "Passenger" table which are unique (non-repeated
-- distances) in descending order
select distinct distance from passenger order by distance desc;

select distance, price,
case 
when price > 1000 then "Expensive"
when price > 500 and price < 1000 then "Avergae cost"
else "Cheap"
end as category
from price order by price;


