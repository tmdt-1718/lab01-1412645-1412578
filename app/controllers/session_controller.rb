class SessionController < ApplicationController
	def create
		if !session[:user_id].nil?
			redirect_to root_path
			return
		end
		session_params = params.require(:session).permit(:username, :password)
		begin
			user = User.find_by_username(session_params[:username])
			if user.nil?
				raise ActiveRecord::RecordNotFound
			end
			if user.password_hash==session_params[:password] then
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
		if session[:user_id].nil?
			redirect_to root_path
			return
		end
		session.delete(:user_id)
		redirect_to root_path
	end
	def login
		if !session[:user_id].nil?
			redirect_to root_path
		end
	end
end
