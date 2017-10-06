class PictureController < ApplicationController
	def show
		@picture = Picture.find(params[:id])
		@picture.update({view_count: @picture.view_count+1})
		@picture.album.update({view_count: @picture.album.view_count+1})
	end
end
