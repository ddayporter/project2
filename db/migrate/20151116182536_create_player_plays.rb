class CreatePlayerPlays < ActiveRecord::Migration
  def change
    create_table :player_plays do |t|
      t.belongs_to :player
      t.belongs_to :play
    end
  end
end
