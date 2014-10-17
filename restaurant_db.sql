CREATE DATABASE restaurant_db;

\c restaurant_db;

CREATE TABLE foods (
	id SERIAL PRIMARY KEY,
	food_name VARCHAR(100),
	price INTEGER
);

CREATE TABLE parties (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	table_num INTEGER,
	party_size INTEGER,
	paid VARCHAR(5)
);

CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	food_id INTEGER,
	party_id INTEGER
);
## INSERT INTO foods (food_name, price) VALUES ('Pork Roll', 15);
##INSERT INTO parties (name, table_num, party_size) VALUES ('Haynsworth', 2, 3);