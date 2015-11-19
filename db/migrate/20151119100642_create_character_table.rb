class CreateCharacterTable < ActiveRecord::Migration
  def change
    create_table :character_tables do |t|
      t.string :name
      t.string :basic_skill
      t.string :advanced_skill
      t.string :image
      t.belongs_to :game  
    end
  end
end
