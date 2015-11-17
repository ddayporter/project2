class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :image
      t.belongs_to :user 
    end
  end
end
