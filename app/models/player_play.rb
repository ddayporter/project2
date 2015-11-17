class PlayerPlay < ActiveRecord::Base
  belongs_to :player
  belongs_to :play 
end
