class CreateMissionsTable < ActiveRecord::Migration
  def change
    create_table :missions_tables do |t|
      t.belongs_to :play
      t.belongs_to :character 
    end
  end
end
