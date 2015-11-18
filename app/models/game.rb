class Game < ActiveRecord::Base
  belongs_to :user
  has_many :plays
  has_many :characters 
end
