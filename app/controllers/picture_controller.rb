class PictureController < ApplicationController
	# Retrieve pictures from https://pixabay.com/api/docs/  The pugs were funny.
	def index
		@pictures = Picture.all
		render json: @pictures
	end

	def create

		picture = Picture.new(picture_params)

		if picture.save
			render json: picture
		else
			render json: { message: picture.errors }, status: 301
		end
	end

	def show
		render json: @picture
	end

	def update
		if @picture.update(picture_params)
			render json: @picture
		else
		  render json: { message: @picture.errors }, status: 301
		end

	end

	def destroy
		if @picture.destroy
			render status: 204
		else
			render json: { message: "Unable to remove picture"}, status: 400
		end
	end


	private

	def picture_params
		params.require(:picture).permit(:url, :background, :background_id)
	end
end
