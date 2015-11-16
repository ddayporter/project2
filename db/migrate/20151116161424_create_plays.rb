class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :title
      t.datetime :created_at
      t.string :game_notes
      t.string :players
      t.string :winner
      t.belongs_to :user
      t.belongs_to :game
    end
  end
end
