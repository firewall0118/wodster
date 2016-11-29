class AddDetailsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :lat, :float
  	add_column :users, :lon, :float
  	add_column :users, :reminder, :json
		add_column :users, :expire_date, :date
		add_column :users, :credit_number, :string
    
		add_column :users, :avatar_user_img_file_name, :string
    add_column :users, :avatar_user_img_content_type, :string
    add_column :users, :avatar_user_img_file_size, :integer
    add_column :users, :avatar_user_img_updated_at, :datetime
  end
end