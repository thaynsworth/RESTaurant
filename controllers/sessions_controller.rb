class SessionsController < ApplicationController

  post '/' do
    redirect '/' unless user = User.find_by({username: params[:username]})
    if user.password == params[:password]
      session[:current_user] = user.id
      redirect '/foods'
    end
  end

  delete '/' do
    session[:current_user] = nil
    redirect '/'
  end

end