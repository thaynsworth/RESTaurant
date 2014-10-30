class UsersController < ApplicationController

  post '/login' do
    user = User.new(params[:user])
    user.password = params[:password]
    user.save!
    redirect '/users/login'
  end

  get '/login' do
    erb :'sessions/login'
  end

end