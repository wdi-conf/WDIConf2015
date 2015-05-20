class Attendee < ActiveRecord::Base
	belongs_to :event
	belongs_to :user

  def number_attendees
    self.attendees.where(user_role: 'user').count
  end

  def tickets_available
    max_tix = self.max_tix
    tix_sold = number_attendees
    max_tix - tix_sold
  end

  def attendee_list(event)
     attendees.where(event_id: @event)
  end

end
