class RemodelDatabaseTables < ActiveRecord::Migration
  def change
  	remove_column :events, :speaker_id
  	drop_table :speakers
  	add_column :users, :bio, :text
  end
end
