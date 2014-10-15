require 'bundler'
Bundler.require

require './connection'

ROOT_PATH = Dir.pwd
Dir[ROOT_PATH+"/lib/*.rb"].each{ |file| require file }

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
	Food.create(params[:food])
	redirect '/foods'
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

post '/parties/:id/order' do
	Order.create(params[:order])
	redirect "/parties/#{params[:id]}"
end








