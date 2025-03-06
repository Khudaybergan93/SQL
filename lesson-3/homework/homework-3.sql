create database homework3_table
use homework3_table
--1
create table Flights (flight_id bigint primary key,departing_gate varchar(20),arriving_gate varchar(20),
created_at timestamp, updated_at datetime default getdate(), airline_id bigint, departing_airport_id bigint, arriving_airport_id bigint)
select* from Flights
Alter table Flights
add constraint fk_airline_id foreign key (airline_id) references Airport (id)
Alter table Flights
add constraint fk_departing_airport_id foreign key (departing_airport_id) references Airport (id)
Alter table Flights
add constraint fk_arriving_airport_id foreign key (arriving_airport_id) references Airline (id)
--2
create table Airport (id bigint primary key, airport_name varchar(50),country varchar(50),
state varchar(50),city varchar(50),created_at timestamp, updated_at datetime default getdate())
select* from Airport

--3
create table Airline (id bigint primary key, airline_code varchar, airline_name bigint,
airline_country varchar(50), created_at timestamp,updated_at datetime default getdate())
select* from Airline

--4
create table Flight_manifest (id bigint primary key,created_at timestamp,updated_at datetime default getdate(),
booking_id bigint, flight_id bigint)
select* from Flight_manifest
Alter table Flight_manifest
add constraint fk_booking_id foreign key (booking_id) references Booking (bookingid)
Alter table Flight_manifest 
add constraint fk_flight_id foreign key (flight_id) references Flights (flight_id)


--5
create table Booking (bookingid bigint primary key, flight_id bigint, status varchar(20),booking_platform varchar(20),
created_at timestamp,updated_at datetime default getdate(),passenger_id bigint)
select* from Booking
Alter table Booking
add constraint fk_passenger_id foreign key (passenger_id) references Passengers(id)

--6
create table Baggage (id bigint primary key, weight_in_kg decimal(4,2),created_date timestamp, 
updated_date datetime default getdate(), booking_id bigint)
select* from Baggage
Alter table Baggage 
add constraint FK_booking_id1 Foreign key (booking_id) references Booking(bookingid)


--7
create table Boarding_pass (id bigint primary key, qr_code varchar(6553),
created_at timestamp,updated_at datetime default getdate(),booking_id bigint)
select* from Boarding_pass
Alter table Boarding_pass
add constraint fk_booking_id6 foreign key (booking_id) references Booking(bookingid)
--8 
create table Baggage_check (id bigint primary key, check_result varchar(50), created_at bigint, 
updated_at bigint,booking_id bigint,passenger_id bigint)
select* from Baggage_check
Alter table Baggage_check 
add constraint FK_booking_id2 foreign key (booking_id) references Booking(bookingid)
Alter table Baggage_check
add constraint FK_passenger_id3 foreign key (passenger_id) references Passengers(id)

--9
create table Passengers (id bigint primary key,first_name varchar(50), last_name varchar(50), date_of_birth date, country_of_citizenship varchar(50),
country_of_residence varchar(50),passport_number varchar(20), created_at timestamp,updated_at datetime default getdate())
select* from Passengers

--10
create table No_fly_list (id bigint primary key, active_from date,active_to date, no_fly_reason varchar(255),
created_at timestamp,updated_at datetime default getdate(),psgnr_id bigint)
select* from No_fly_list
Alter table No_fly_list
add constraint fk_psgnr_id foreign key (psgnr_id) references Passengers(id)

--11
create table Security_check (id bigint primary key, check_result varchar(20),comments varchar(6553),
created_at timestamp,updated_at datetime default getdate(),passenger_id bigint)
select* from Security_check
Alter table Security_check
add constraint fk_passenger_id1 foreign key(passenger_id) references Passengers(id)

