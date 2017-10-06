class AlbumsController < ApplicationController
  def index
  	@albums = Album.all.order("created_at")
  	@breadcums.push title: "Albums", url: albums_path
  end
  def show
  	@album = Album.find(params[:id])
  	@breadcums.push title: "Albums", url: albums_path
  	@breadcums.push title: @album.author, url: album_path(@album.id)
  end
end
