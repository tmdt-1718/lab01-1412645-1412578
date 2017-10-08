class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def initialize
  	@breadcums = [{title: "Home", url: "/"}]
  	@view_options = {homepage: false}
  	super()
  end
  def authorize
  	if session[:user_id].nil?
  		redirect_to session_login_path
  	end
  end
end
