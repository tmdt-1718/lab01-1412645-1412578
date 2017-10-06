class AlbumsController < ApplicationController
  def index
  	@albums = Album.all.order("created_at")
  end
  def show
  	@album = Album.find(params[:id])
  end
end
