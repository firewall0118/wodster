class Center < ActiveRecord::Base
	# belongs_to :wod
	has_many :wods
	belongs_to :category
	has_many :coaches
	belongs_to :user
end
