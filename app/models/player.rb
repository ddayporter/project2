class Player < ActiveRecord::Base
  belongs_to :user
  has_many :player_plays
  has_many :plays, through: :player_plays 
end
