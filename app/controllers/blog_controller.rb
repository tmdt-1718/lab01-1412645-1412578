class BlogController < ApplicationController
  def index
  	@breadcums.push title:"Blog", url: blog_path
  end
end
