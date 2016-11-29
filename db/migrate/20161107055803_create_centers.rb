class CreateCenters < ActiveRecord::Migration
  def change
    create_table :centers do |t|
    	# t.integer :wod_id
      t.integer :category_id
    	t.integer :user_id
    	t.string :name
    	t.float :lat
    	t.float :lon

      t.timestamps null: false
    end
  end
end