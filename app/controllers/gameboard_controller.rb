class GameboardController < ApplicationController
  def index
  end

  def create
    gameboard = Gameboard.create(gameboard_params)
  end


  def show
    
  end

  def update
  end

  def destroy
  end


  private
  def gameboard_params
    params.require(:gameboard).permit(:url, :background)
  end
  
end
