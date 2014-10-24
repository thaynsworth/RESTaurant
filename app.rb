require 'bundler'
Bundler.require

require './connection'
require_relative 'helpers/link_helper'
require_relative 'helpers/form_helper'
helpers ActiveSupport::Inflector

ROOT_PATH = Dir.pwd
Dir[ROOT_PATH+"/lib/*.rb"].each{ |file| require file }

#####
# can use this to get you into pry quickly
# get '/console' do
# 	binding.pry
# end
#####

###################
## Homepage
###################

get '/' do
	# need to add main page here
	erb :index
end

###################
## Food
###################

get '/foods' do
	@food = Food.all
	erb :'food/index'
end

get '/foods/new' do
	erb :'food/new'
end

post '/foods' do
	food = Food.create(params[:food])
	if food.valid?
		redirect '/foods'
	else
		@errors = food.errors.full_messages
		erb :'food/new'
	end
end

get '/foods/:id' do
	@food = Food.find(params[:id])
	erb :'food/show'
end

get '/foods/:id/edit' do
	@food = Food.find(params[:id])
	erb :'food/edit'
end

patch '/foods/:id' do
	food = Food.find(params[:id])
	food.update(params[:food])
	redirect '/foods'
end

delete '/foods/:id' do
	Food.destroy(params[:id])
	redirect '/foods'
end

###################
## Parties
###################

get '/parties' do
	@party = Party.all
	erb :'party/index'
end

get '/parties/new' do
	erb :'party/new'
end

post '/parties' do
	Party.create(params[:party])
	redirect '/parties'
end

get '/parties/:id' do
	@party = Party.find(params[:id])
	@foods = Food.all
	erb :'party/show'
end

get '/parties/:id/edit' do
	@party = Party.find(params[:id])
	erb :'party/edit'
end

patch '/parties/:id' do
	party = Party.find(params[:id])
	party.update(params[:party])
	redirect '/parties'
end

delete '/parties/:id' do
	Party.destroy(params[:id])
	redirect '/parties'
end

###################
## Orders
###################

# post '/parties/:id/orders' do

# 	# @party = Party.find(params[:id])
# 	# @food = Food.where(params[:id])
# 	Order.create(params[:orders])
# 	redirect "/parties"  #{params[:id]}
# end

get '/orders' do
	@orders = Order.all
	erb :'order/index'
end

post '/orders' do
	# food = Food.where(name: params[:food_name])
	# @party = Party.find(params[:id])
	# @party.foods << food
	order = Order.create(params[:order])
	redirect "/parties/#{order.party_id}"
end

get '/orders/:id' do
	@order = Order.find(params[:id])
	# @orders = Order.find(params[:id])
	erb :'order/show'
end

delete '/orders/:id' do
	Order.destroy(params[:id])
	redirect '/parties'
end

get '/parties/:id/receipt' do
	@party = Party.find(params[:id])

	file = File.open('receipt.txt', 'a+')

	@orders = Order.where(party_id: params[:id])
	@orders.each do |order|
		file.write([order.food.food_name, order.food.price])
	end
	file.close
	erb :'party/receipt'
end

patch '/parties/:id/orders/checkout' do
	party = Party.find(params[:id])
	new_paid = "PAID"
	party.update({paid: new_paid})
	redirect '/parties'
end







