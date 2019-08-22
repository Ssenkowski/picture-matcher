class GameboardController < ApplicationController
  def index
  end

  def create
    gameboard = Gameboard.create(gameboard_params)
  end


  def show
    render json: @gameboard
  end
  
	def update
		if @gameboard.update(gameboard_params)
			render json: @gameboard
		else
		  render json: { message: @gameboard.errors }, status: 301
		end

	end

	def destroy
		if @gameboard.destroy
			render status: 204
		else
			render json: { message: "Unable to remove gameboard"}, status: 400
		end

  private
  def gameboard_params
    params.require(:gameboard).permit(:url, :background)
  end
  
end
