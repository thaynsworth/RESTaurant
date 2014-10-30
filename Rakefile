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

	# desc 'create junk data'
	# task :junk_data do
	# 	require_relative 'lib/food'
	# 	require_relative 'lib/party'

	# 	Food.create({food_name: 'Choros', price: 31})
	# 	Food.create({food_name: 'Lamb', price: 6})
	# 	Food.create({food_name: 'Steak', price: 27})

	# 	Party.create({name: 'Johnson', table_num: 2, party_size: 4, paid: 'No'})
	# 	Party.create({name: 'Will', table_num: 4, party_size: 3, paid: 'No'})
	# 	Party.create({name: 'Matt', table_num: 7, party_size: 6, paid: 'No'})
	# end

end










