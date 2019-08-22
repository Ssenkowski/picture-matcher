class GameboardController < ApplicationController
  def index
  end

  def create
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
