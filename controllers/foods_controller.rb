class FoodsController < ApplicationController

  get '/' do
    authenticate!
    @food = Food.all
    erb :'food/index'
  end

  get '/new' do
    authenticate!
    erb :'food/new'
  end

  post '/' do
    authenticate!
    food = Food.create(params[:food])
    if food.valid?
      redirect '/foods'
    else
      @errors = food.errors.full_messages
      erb :'food/new'
    end
  end

  get '/:id' do
    authenticate!
    @food = Food.find(params[:id])
    erb :'food/show'
  end

  get '/:id/edit' do
    authenticate!
    @food = Food.find(params[:id])
    erb :'food/edit'
  end

  patch '/:id' do
    authenticate!
    food = Food.find(params[:id])
    food.update(params[:food])
    redirect '/foods'
  end

  delete '/:id' do
    authenticate!
    Food.destroy(params[:id])
    redirect '/foods'
  end

end