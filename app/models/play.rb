class Play < ActiveRecord::Base
  belongs_to :user
  belongs_to :game, dependent: :destroy
  # has_many :players
end
