class PartiesController < ApplicationController

  get '/' do
    @party = Party.all
    erb :'party/index'
  end

  get '/new' do
    erb :'party/new'
  end

  post '/' do
    Party.create(params[:party])
    redirect '/parties'
  end

  get '/:id' do
    @party = Party.find(params[:id])
    @foods = Food.all
    erb :'party/show'
  end

  get '/:id/edit' do
    @party = Party.find(params[:id])
    erb :'party/edit'
  end

  patch '/:id' do
    party = Party.find(params[:id])
    party.update(params[:party])
    redirect '/parties'
  end

  delete '/:id' do
    Party.destroy(params[:id])
    redirect '/parties'
  end

  get '/:id/receipt' do
    @party = Party.find(params[:id])

    file = File.open('receipt.txt', 'a+')

    @orders = Order.where(party_id: params[:id])
    @orders.each do |order|
      file.write([order.food.food_name, order.food.price])
    end
    file.close
    erb :'party/receipt'
  end

  patch '/:id/orders/checkout' do
    party = Party.find(params[:id])
    new_paid = "PAID"
    party.update({paid: new_paid})
    redirect '/parties'
  end

end

