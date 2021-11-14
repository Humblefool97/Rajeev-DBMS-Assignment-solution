-- Create DB
CREATE database Travel_Database;
USE Travel_Database;

CREATE TABLE Passenger(
	passenger_name varchar(50),
    category varchar(10),
    gender char,
    boarding_city varchar(20),
    destination_city varchar(20),
    distance int,
    bus_type varchar(20)
);

CREATE TABLE Price(
	bus_type varchar(20),
    distance int,
    price int
);