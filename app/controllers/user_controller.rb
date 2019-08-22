class UserController < ApplicationController
  def index
    @users = User.all
  end


  def create
    user = User.create(user_params)
    session[:user_id] = user.id
    redirect_to root_path
  end

  def show
    render json: @user
  end

  def update
    if @user.update(user_params)
			render json: @user
		else
		  render json: { message: @user.errors }, status: 301
		end
  end

  def destroy
    if @user.destroy
			render status: 204
		else
			render json: { message: "Unable to remove user"}, status: 400
		end
  end

  private
  def user_params
    params.require(:user).permit(:username)
  end

  def set_user
		@user = User.find_by(id: params[:id])
	end
end
