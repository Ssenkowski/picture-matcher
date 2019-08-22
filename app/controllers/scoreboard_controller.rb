class ScoreboardController < ApplicationController
  def index
  end

  def create
    scoreboard = Scoreboard.create(scoreboard_params)
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def scoreboard_params
    params.require(:scoreboard).permit(:userid, :name, :score, :rank)
  end
end
