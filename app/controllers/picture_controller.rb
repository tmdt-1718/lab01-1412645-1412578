class PictureController < ApplicationController
	def show
		@picture = Picture.find(params[:id])
		update_view_count
		@breadcums.push title: "Albums", url: albums_path
		@breadcums.push title: @picture.album.author, url: album_path(@picture.album.id)
		@breadcums.push title: @picture.id.to_s, url: picture_path(@picture.id)
	end
	private
	def update_view_count
		@picture.update view_count: @picture.view_count+1
		@picture.album.update view_count: @picture.album.view_count+1
	end
end
