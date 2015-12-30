class UsersController < ApplicationController
  
  def new
    @new_user = User.new
  end

  def create
    @new_user = User.new(user_params)
    if @new_user.save
      session[:user_id] = @new_user.id
      redirect_to '/'
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews
  end


private

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
  
end
