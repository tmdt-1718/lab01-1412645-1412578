class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def initialize
  	@breadcums = [{title: "Home", url: "/"}]
  	super()
  end
end
