class HomeController < ApplicationController
  def index
  	@view_options[:homepage] = true
  end
end
