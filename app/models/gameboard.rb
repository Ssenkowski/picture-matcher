class Gameboard < ApplicationRecord
    has_many :pictures
    has_one :user
    
end
