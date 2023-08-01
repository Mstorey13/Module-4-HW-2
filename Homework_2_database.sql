-- CREATE TABLE
CREATE TABLE customer (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	billing_info VARCHAR(150),
	address VARCHAR(150)
);

CREATE TABLE tickets (
	ticket_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL, 
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE concessions (
	concession_id SERIAL PRIMARY KEY,
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(10,2),
	food_id INTEGER NOT NULL
);

CREATE TABLE inventory (
	upc SERIAL PRIMARY KEY,
	rottentomatoes_rating iNTEGER,
	concession_id INTEGER NOT NULL,
	FOREIGN KEY (concession_id) REFERENCES concessions(concession_id)
);

CREATE TABLE movie (
	movie_id SERIAL primary KEY,
	movie_name VARCHAR(100),
	rating VARCHAR(10),
	upc INTEGER NOT NULL,
	FOREIGN KEY (upc) REFERENCES inventory(upc)
); 

