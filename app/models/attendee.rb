class Attendee < ActiveRecord::Base

  # belongs_to :user
  # belongs_to :event
  has_one :user
  has_one :event
end