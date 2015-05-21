class User < ActiveRecord::Base
	has_secure_password
	has_many :attendees
	has_many :events, through: :attendees
	validates :email, uniqueness: true
	validates :name, :email, presence: true
  
  validates :password, presence: true, :on => :create
  mount_uploader :photos, PhotoUploader
end
