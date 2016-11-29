class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
    	t.integer :center_id
      t.integer :user_id
      
    	t.string :first_name
    	t.string :last_name
      t.string :name
      t.string :duty
    	t.attachment :avatar_coach_img
      t.timestamps null: false
    end
  end
end