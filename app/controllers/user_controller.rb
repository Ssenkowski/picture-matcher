class UserController < ApplicationController
  def index
  end


  def create
    user = User.create(user_params)
    session[:user_id] = user.id
    redirect_to root_path
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:username)
  end
end
