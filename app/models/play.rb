class Play < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  has_many :missions
  has_many :characters, through: :missions 
end
