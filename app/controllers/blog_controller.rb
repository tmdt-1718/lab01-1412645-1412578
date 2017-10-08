class BlogController < ApplicationController
  def index
  	@blogs = Blog.all
  end
  def create
  	post_param = params.require(:blog).permit(:text_content)
  	post_param[:view_number] = 0
  	Blog.create!(post_param)
  	redirect_to blog_index_path
  end
  def show
  	@blog = Blog.find(params[:id])
  end
end
