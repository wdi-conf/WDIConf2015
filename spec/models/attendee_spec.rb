require 'rails_helper'

describe 'Attendee' do

  before :each do
    Attendee.create(user_id: 1, event_id: 1, user_role: 'user')
    Attendee.create(user_id: 2, event_id: 1, user_role: 'user')
    Attendee.create(user_id: 3, event_id: 1, user_role: 'user')
    Attendee.create(user_id: 4, event_id: 1, user_role: 'user')
    Attendee.create(user_id: 5, event_id: 1, user_role: 'user')

    Attendee.create(user_id: 1, event_id: 2, user_role: 'user')
  end

  it 'is valid with all fields filled in' do
    attendence = Attendee.create(
      user_id: 1,
      event_id: 1,
      user_role: 'speaker')
    expect(attendence).to be_valid
  end

=begin
  it 'number_attendees should return the correct number of attendees' do
    expect(Attendee.number_attendees).to eq 5
  end

  it 'number_attendees should return the correct number of attendees' do
    expect(Attendee.tickets_available).to eq 45
  end
=end

=begin
  it 'number_attendees should return the correct number of attendees' do
    expect(self.number_attendees).to eq 5
  end
=end

end






=begin
# attendee
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
=end
