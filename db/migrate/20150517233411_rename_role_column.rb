class RenameRoleColumn < ActiveRecord::Migration
  def change
    rename_column :attendees, :role, :user_role
  end
end
