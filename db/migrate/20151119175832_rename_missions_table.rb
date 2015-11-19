class RenameMissionsTable < ActiveRecord::Migration
  def change
    rename_table :missions_tables, :missions
  end
end
