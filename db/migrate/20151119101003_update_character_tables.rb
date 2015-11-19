class UpdateCharacterTables < ActiveRecord::Migration
  def change
    rename_table :character_tables, :characters 
  end
end
