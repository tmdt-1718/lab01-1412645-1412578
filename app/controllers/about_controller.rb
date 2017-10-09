class AboutController < ApplicationController
  def index
  	@breadcums.push title: "About", url: about_path
  end
end
