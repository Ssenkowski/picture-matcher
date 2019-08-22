class ScoreboardController < ApplicationController
  def index
  end

  def create
    scoreboard = Scoreboard.create(scoreboard_params)
  end

  def show
    render json: @scoreboard
  end
  
	def update
		if @scoreboard.update(scoreboard_params)
			render json: @scoreboard
		else
		  render json: { message: @scoreboard.errors }, status: 301
		end

	end

	def destroy
		if @scoreboard.destroy
			render status: 204
		else
			render json: { message: "Unable to remove scoreboard"}, status: 400
		end

  private
  def scoreboard_params
    params.require(:scoreboard).permit(:userid, :name, :score, :rank)
  end
end
