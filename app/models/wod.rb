class Wod < ActiveRecord::Base
	# has_many :centers
	# belongs_to :category
	belongs_to :center

	has_attached_file :avatar_wod_img
  	validates_attachment_content_type :avatar_wod_img, content_type: /\Aimage\/.*\z/
end
