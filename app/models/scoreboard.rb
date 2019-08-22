class Scoreboard < ApplicationRecord
    has_many :users
    
    def create
        scoreboard = Scoreboard.create(scoreboard_params)
      end


end
