class UserController < ApplicationController
	def create
		user_params = params.require(:user).permit(:name, :username, :password_hash)
		user = User.find_by_username(user_params[:username]);
		if user.nil?
			User.create(user_params)
			redirect_to session_login_path
		else
			flash[:error]="Tài khoản đăng nhập đã tồn tại!"
			redirect_to session_register_path
		end
	end
end
