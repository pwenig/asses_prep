class UsersController < ApplicationController

  def index
  end

  def new
  @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:register_message] = "Welcome, #{@user.name}"
      redirect_to "/"
    else
      flash[:error] = "All fields required"
      render new_user_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end


end