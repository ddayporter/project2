class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.date :date
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :num_floors
      t.string :image
      t.string :player_one_character
      t.string :player_two_character
      t.string :player_three_character
      t.string :player_four_character
      t.string :loot
      t.string :tools
      t.string :events
      t.string :winner      
    end
  end
end
