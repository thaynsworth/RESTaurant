require 'bundler'
Bundler.require

require 'sinatra/activerecord/rake'
require_relative 'connection'

namespace :db do
	desc 'create restaurant database'
	task :create_db do 
		conn = PG::Connection.open()
		conn.exec('CREATE DATABASE restaurant_db;')
		conn.close
	end
	desc 'drop restaurant database'
	task :drop_db do 
		conn = PG::Connection.open()
		conn.exec('DROP DATABASE restaurant_db;')
		conn.close
	end
	# desc 'migrate the database with all tables'
	# task :migrate do
	# 	conn = PG::Connection.open({dbname: 'restaurant_db'})

	# 	sql_statement = <<-eos
	# 		CREATE TABLE foods (
	# 			id SERIAL PRIMARY KEY,
	# 			food_name VARCHAR(100),
	# 			price INTEGER
	# 		);
	# 	eos

		##Tried to consolidate but this was only reading orders
		# sql_statement = <<-eos
		# 	CREATE TABLE parties (
		# 		id SERIAL PRIMARY KEY,
		# 		name VARCHAR(100),
		# 		table_num INTEGER,
		# 		party_size INTEGER,
		# 		paid VARCHAR(5)
		# 	);
		# eos

		# sql_statement = <<-eos
		# 	CREATE TABLE orders (
		# 		id SERIAL PRIMARY KEY,
		# 		food_id INTEGER,
		# 		party_id INTEGER
		# 	);
		# eos

	# 	conn.exec(sql_statement)

	# 	conn.close
	# end

	# desc 'migrate the database with parties table'
	# task :migrate do
	# 	conn = PG::Connection.open({dbname: 'restaurant_db'})

	# 	sql_statement = <<-eos
	# 		CREATE TABLE parties (
	# 			id SERIAL PRIMARY KEY,
	# 			name VARCHAR(100),
	# 			table_num INTEGER,
	# 			party_size INTEGER,
	# 			paid VARCHAR(5)
	# 		);
	# 	eos

	# 	conn.exec(sql_statement)

	# 	conn.close
	# end
	# desc 'migrate the database with orders table'
	# task :migrate do
	# 	conn = PG::Connection.open({dbname: 'restaurant_db'})

	# 	sql_statement = <<-eos
	# 		CREATE TABLE orders (
	# 			id SERIAL PRIMARY KEY,
	# 			food_id INTEGER,
	# 			party_id INTEGER
	# 		);
	# 	eos

	# 	conn.exec(sql_statement)

	# 	conn.close
	# end
	desc 'create junk data'
	task :junk_data do
		require_relative 'lib/food'
		require_relative 'lib/party'
		
		Food.create({food_name: 'Choros', price: 31})
		Food.create({food_name: 'Lamb', price: 6})
		Food.create({food_name: 'Steak', price: 27})

		Party.create({name: 'Johnson', table_num: 2, party_size: 4, paid: 'No'})
		Party.create({name: 'Will', table_num: 4, party_size: 3, paid: 'No'})
		Party.create({name: 'Matt', table_num: 7, party_size: 6, paid: 'No'})
	end

end










