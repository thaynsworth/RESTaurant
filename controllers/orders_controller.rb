class OrdersController < ApplicationController

  get '/' do
    @orders = Order.all
    erb :'order/index'
  end

  post '/' do
    order = Order.create(params[:order])
    redirect "/parties/#{order.party_id}"
  end

  get '/:id' do
    @order = Order.find(params[:id])
    erb :'order/show'
  end

  delete '/:id' do
    Order.destroy(params[:id])
    redirect '/parties'
  end

end
