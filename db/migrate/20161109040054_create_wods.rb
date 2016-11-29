class CreateWods < ActiveRecord::Migration
  def change
    create_table :wods do |t|
      # t.integer :category_id
      t.integer :center_id

      t.string :name
      t.date :wod_datetime
      t.string :wod_time
      t.string :location
      t.integer :capacity
      t.text :description
      t.attachment :avatar_wod_img
    	t.float :lat
    	t.float :lon

      t.timestamps null: false
    end
  end
end
