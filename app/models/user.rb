class User < ApplicationRecord

     def create
      user = User.create(user_params)
      session[:user_id] = user.id
      redirect_to root_path
    end
   
    private
      def user_params
        params.require(:user).permit(:username)
      end
end
