class BlogController < ApplicationController
  before_action :authorize, only: [:create]
  def index
  	@breadcums.push title:"Blog", url: blog_index_path
  	@blogs = Blog.all
  end
  def create
  	post_param = params.require(:blog).permit(:text_content)
  	post_param[:view_number] = 0
    post_param[:user_id] = session[:user_id]
  	Blog.create!(post_param)
  	redirect_to blog_index_path
  end
  def show
  	@blog = Blog.find(params[:id])
    @blog.view_number = @blog.view_number + 1
    @blog.save!
    @breadcums.push title:"Blog", url: blog_index_path
    @breadcums.push title:"#{@blog.id}", url: blog_path(@blog.id)
  end
end
