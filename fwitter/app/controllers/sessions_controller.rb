class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to tweets_path
    else
      redirect_to login_path, notice: 'Username or Password Not Correct'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
