class Coach < ActiveRecord::Base
	belongs_to :center
	belongs_to :user
	has_many :certifications

	has_attached_file :avatar_coach_img
  	validates_attachment_content_type :avatar_coach_img, content_type: /\Aimage\/.*\z/
end