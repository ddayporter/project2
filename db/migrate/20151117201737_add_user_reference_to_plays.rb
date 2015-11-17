class AddUserReferenceToPlays < ActiveRecord::Migration
  def change
    add_reference :plays, :user, index: true
    add_foreign_key :plays, :users
  end
end
