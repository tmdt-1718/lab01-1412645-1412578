class UserController < ApplicationController
	before_action :no_authorize, only: [:create]
	def create
		user_params = params.require(:user).permit(:name, :username, :password)
		begin
			if (!User.exists?(username: user_params[:username]));				
				new_user = User.new(user_params)
			    new_user.password = user_params[:password]
			    new_user.save!
				redirect_to session_login_path
			else
				flash[:error]="Tài khoản #{user_params[:username]} đăng ký đã tồn tại!"
				redirect_to session_register_path
			end
		rescue ActiveRecord::RecordNotSaved
			flash[:error]="Đã xảy ra lỗi trong quá trình đăng ký!"
			redirect_to session_register_path
		end
	end
end
