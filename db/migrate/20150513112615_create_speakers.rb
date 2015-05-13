class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name, :null => false
      t.text :bio, :null => false
      t.integer :event_id
    end
  end
end
