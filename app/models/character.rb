class Character < ActiveRecord::Base
  belongs_to :game
  has_many :missions
  has_many :plays, through: :missions

end
