class Game < ActiveRecord::Base
  belongs_to :user, dependent: :destroy 
  has_many :plays
end
