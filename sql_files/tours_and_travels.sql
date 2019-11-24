create table agency
(
	agency_id int AUTO_INCREMENT,
	location varchar(20),
	no_of_agents int NOT NULL,
	phone_no varchar(20) NOT NULL,
	PRIMARY KEY (agency_id)
);

create table agent
(
	agent_id int AUTO_INCREMENT,
	agent_name varchar(20) NOT NULL,
	agency_id int NOT NULL ,
	agent_password varchar(20),
	commission float NOT NULL,
	PRIMARY KEY (agent_id),
	FOREIGN KEY (agency_id) REFERENCES agency(agency_id) ON DELETE CASCADE 
);

create table customer
(
	customer_id int AUTO_INCREMENT,
	agent_id int,
	customer_name varchar(20) NOT NULL,
	street varchar(20),
	area varchar(20) NOT NULL,
	city varchar(20) NOT NULL,
	PRIMARY KEY (customer_id),
	FOREIGN KEY (agent_id) REFERENCES agent(agent_id) ON DELETE CASCADE
);



create table booking
(
	booking_id int AUTO_INCREMENT,
	booking_date date,
	agent_id int,	
	PRIMARY KEY (booking_id),
	FOREIGN KEY (agent_id) REFERENCES agent(agent_id) ON DELETE CASCADE
);


create table books_through
(
	agent_id int,
	customer_id int,
	FOREIGN KEY (agent_id) REFERENCES agent(agent_id) ON DELETE CASCADE,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE, 
	PRIMARY KEY (agent_id,customer_id)	
);



create table bus_travel
(
	bus_id int AUTO_INCREMENT,
	bus_name varchar(20) NOT NULL,
	bus_price int NOT NULL,
	from_date date NOT NULL,
	source varchar(20) NOT NULL,
	destination varchar(20) NOT NULL,
	no_of_passengers int NOT NULL,
	PRIMARY KEY (bus_id)
);

create table train_travel
(
	train_id int AUTO_INCREMENT,
	train_name varchar(20) NOT NULL,
	train_price int,
	from_date date NOT NULL,
	source varchar(20) NOT NULL,
	destination varchar(20) NOT NULL,
	no_of_passengers int NOT NULL,
	PRIMARY KEY (train_id)
);

create table package
(
	package_code varchar(5),
	package_id int AUTO_INCREMENT,
	package_name varchar(20) NOT NULL,
	package_price int,
	from_date date NOT NULL,
	pickup varchar(20) NOT NULL,
	no_of_passengers int NOT NULL,
	PRIMARY KEY (package_id)
);

create table destination
(
	package_id int,
	destinations varchar(20),
	FOREIGN KEY (package_id) REFERENCES package(package_id) ON DELETE CASCADE,
	PRIMARY KEY (package_id,destinations)
);

create table payment
(
	payment_id int AUTO_INCREMENT,
	payment_status varchar(20) NOT NULL,
	payment_mode varchar(20) NOT NULL,
	payment_price int,
	PRIMARY KEY(payment_id)
);

create table hotel
(
	hotel_id int AUTO_INCREMENT,
	hotel_name varchar(20) NOT NULL,
	hotel_price int,
	hotel_location varchar(20) NOT NULL,
	from_date date NOT NULL,
	till_date date NOT NULL,
	no_of_passengers int NOT NULL,
	PRIMARY KEY (hotel_id)	  	
);

create table air_travel
(
	airline_id int AUTO_INCREMENT,
	airline_name varchar(20) NOT NULL,
	air_price int NOT NULL,
	from_date date NOT NULL,
	source varchar(20) NOT NULL,
	no_of_passengers int NOT NULL,
	destination varchar(20) NOT NULL,
	PRIMARY KEY (airline_id)
);

create table contains
(
	payment_id int,
	hotel_id int,
	airline_id int,
	bus_id int,
	train_id int,
	package_id int,
	customer_id int,
	booking_id int,
	PRIMARY KEY (payment_id),
	FOREIGN KEY (hotel_id) REFERENCES hotel(hotel_id) ON DELETE CASCADE,
	FOREIGN KEY (airline_id) REFERENCES air_travel(airline_id) ON DELETE CASCADE,
	FOREIGN KEY (bus_id) REFERENCES bus_travel(bus_id) ON DELETE CASCADE,
	FOREIGN KEY (train_id) REFERENCES train_travel(train_id) ON DELETE CASCADE,
	FOREIGN KEY (package_id) REFERENCES package(package_id) ON DELETE CASCADE,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
	FOREIGN KEY (booking_id) REFERENCES booking(booking_id) ON DELETE CASCADE
);

create table bus_new
(
	source varchar(20),
	destination varchar(20),
	bus_price int
);

create table train_new
(
	source varchar(20),
	destination varchar(20),
	train_price int
);

create table hotel_new
(
	hotel_name varchar(20),
	hotel_price int
);

create table air_new
(
	source varchar(20),
	destination varchar(20),
	company varchar(20),
	air_price int
);

create table package_new
(
	package_name varchar(20),
	package_price int
);


