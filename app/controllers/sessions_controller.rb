class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:name]).try(:authenticate, params[:password])
    if user
      session[:user_id] = user.id
      flash[:success] = "Welcome, #{user.name}"
      redirect_to '/'
    else
      flash.now[:error] = "Invalid Email and Password Combination"
      render :new
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to '/'
  end

end