class AddcolumnPlaytableGameid < ActiveRecord::Migration
  def change
    add_reference :plays, :game, index: true
    add_foreign_key :plays, :games
  end
end
