class Mission < ActiveRecord::Base
  belongs_to :character
  belongs_to :play 
end
