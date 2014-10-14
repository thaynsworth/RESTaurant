CREATE DATABASE restaurant_db;

\c restaurant_db;

CREATE TABLE foods (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	price INTEGER
);

CREATE TABLE parties (
	id SERIAL PRIMARY KEY,
	table_num INTEGER,
	party_size INTEGER
);