class ChangeRolesLocation < ActiveRecord::Migration
  def change
  	remove_column :users, :role
  	add_column :attendees, :role, :string
  end
end
