class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.integer :num_stars
      t.string :image
      t.string :logo
      t.string :purchase_url
      t.belongs_to :user
    end
  end
end
