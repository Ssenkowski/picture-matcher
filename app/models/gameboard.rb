class Gameboard < ApplicationRecord
    has_many :pictures
    has_one :user
    
    def create
        gameboard = Gameboard.create(gameboard_params)
      end

      private
        def gameboard_params
          params.require(:gameboard).permit(:url, :background)
        end

end
