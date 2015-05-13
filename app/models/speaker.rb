class Speaker < ActiveRecord::Base

  # belongs_to :event
  has_one :event
end