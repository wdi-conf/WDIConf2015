class User < ActiveRecord::Base

  has_many :events, :through => :attendees
end