


###################
## Food
###################

# get '/foods' do
# 	authenticate!
# 	@food = Food.all
# 	erb :'food/index'
# end

# get '/foods/new' do
# 	authenticate!
# 	erb :'food/new'
# end

# post '/foods' do
# 	authenticate!
# 	food = Food.create(params[:food])
# 	if food.valid?
# 		redirect '/foods'
# 	else
# 		@errors = food.errors.full_messages
# 		erb :'food/new'
# 	end
# end

# get '/foods/:id' do
# 	authenticate!
# 	@food = Food.find(params[:id])
# 	erb :'food/show'
# end

# get '/foods/:id/edit' do
# 	authenticate!
# 	@food = Food.find(params[:id])
# 	erb :'food/edit'
# end

# patch '/foods/:id' do
# 	authenticate!
# 	food = Food.find(params[:id])
# 	food.update(params[:food])
# 	redirect '/foods'
# end

# delete '/foods/:id' do
# 	authenticate!
# 	Food.destroy(params[:id])
# 	redirect '/foods'
# end

###################
## Parties
###################

# get '/parties' do
# 	@party = Party.all
# 	erb :'party/index'
# end

# get '/parties/new' do
# 	erb :'party/new'
# end

# post '/parties' do
# 	Party.create(params[:party])
# 	redirect '/parties'
# end

# get '/parties/:id' do
# 	@party = Party.find(params[:id])
# 	@foods = Food.all
# 	erb :'party/show'
# end

# get '/parties/:id/edit' do
# 	@party = Party.find(params[:id])
# 	erb :'party/edit'
# end

# patch '/parties/:id' do
# 	party = Party.find(params[:id])
# 	party.update(params[:party])
# 	redirect '/parties'
# end

# delete '/parties/:id' do
# 	Party.destroy(params[:id])
# 	redirect '/parties'
# end

###################
## Orders
###################


# get '/orders' do
# 	@orders = Order.all
# 	erb :'order/index'
# end

# post '/orders' do
# 	order = Order.create(params[:order])
# 	redirect "/parties/#{order.party_id}"
# end

# get '/orders/:id' do
# 	@order = Order.find(params[:id])
# 	erb :'order/show'
# end

# delete '/orders/:id' do
# 	Order.destroy(params[:id])
# 	redirect '/parties'
# end

# get '/parties/:id/receipt' do
# 	@party = Party.find(params[:id])

# 	file = File.open('receipt.txt', 'a+')

# 	@orders = Order.where(party_id: params[:id])
# 	@orders.each do |order|
# 		file.write([order.food.food_name, order.food.price])
# 	end
# 	file.close
# 	erb :'party/receipt'
# end

# patch '/parties/:id/orders/checkout' do
# 	party = Party.find(params[:id])
# 	new_paid = "PAID"
# 	party.update({paid: new_paid})
# 	redirect '/parties'
# end

###################
## Users
###################

# post '/users' do
# 	user = User.new(params[:user])
# 	user.password = params[:password]
# 	user.save!
# 	redirect '/users/login'
# end

# get '/users/login' do
# 	erb :'sessions/login'
# end

# post '/sessions' do
# 	redirect '/' unless user = User.find_by({username: params[:username]})
# 	if user.password == params[:password]
# 		session[:current_user] = user.id
# 		redirect '/foods'
# 	end
# end

# delete '/sessions' do
# 	session[:current_user] = nil
# 	redirect '/'
# end






