class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :speaker_id, :null => false
      t.string :title
      t.text :description
      t.datetime :date_time, :null => false
      t.integer :max_tix, :null => false
    end
  end
end
