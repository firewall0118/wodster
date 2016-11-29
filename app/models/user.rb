class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable

  has_many :centers
  has_many :coaches


  has_attached_file :avatar_user_img
  validates_attachment_content_type :avatar_user_img, content_type: /\Aimage\/.*\z/

  include DeviseTokenAuth::Concerns::User
end
