class User < ActiveRecord::Base
	has_secure_password
	has_many :attendees
	has_many :events, through: :attendees
	validates :email, uniqueness: true
	validates :name, :email, :password, presence: true
end
