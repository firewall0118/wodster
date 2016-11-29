	class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
  		t.integer :coach_id
  		
  		t.string :name
      t.timestamps null: false
    end
  end
end
