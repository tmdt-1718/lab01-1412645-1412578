class SessionController < ApplicationController
	before_action :no_authorize, only: [:login, :create, :register]
	before_action :authorize, only: [:destroy]
	def create
		session_params = params.require(:session).permit(:username, :password)
		begin
			user = User.find_by_username!(session_params[:username])
			if user.password==session_params[:password] then
				flash[:succeed] = "Đăng nhập thành công!"
				session[:user_id] = user.id
				session[:user_name] = user.name
				redirect_to root_path
				return
			else
				flash[:error] = "Sai mật khẩu!"
				redirect_to session_login_path
				return
			end
		rescue ActiveRecord::RecordNotFound => e
			flash[:error] = "Tên đăng nhập không tồn tại!"
			redirect_to session_login_path
		end
	end
	def destroy
		session.delete(:user_id)
		redirect_to root_path
	end
	def login
		
	end
end
