require 'rails_helper'

describe 'Event' do

  it 'is valid with all fields filled in' do
    event = Event.new(
        id: 999,
        title: 'The Web Developers Friend',
        max_tix: 50,
        date_time: Time.zone.local(2015,05,22,17,30,0),
        description: "Software must-haves for up and coming developers... ")
    expect(event).to be_valid
  end

  it 'is invalid without a title' do
    event = Event.new(title: nil)
    event.valid?
    expect(event.errors[:title]).to include("can't be blank")
  end

  it 'is invalid without a description' do
    event = Event.new(description: nil)
    event.valid?
    expect(event.errors[:description]).to include("can't be blank")
  end

  it 'is invalid without a date_time' do
    event = Event.new(date_time: nil)
    event.valid?
    expect(event.errors[:date_time]).to include("can't be blank")
  end

  it 'is invalid without max_tix defined' do
    event = Event.new(max_tix: nil)
    event.valid?
    expect(event.errors[:max_tix]).to include("can't be blank")
  end

  it 'should return the correct speaker' do
    user = Event.new()
  end

end

# just commented some stuff out while I correct merge conflict.
=begin


def speaker
  User.find(self.attendees.find_by(user_role: 'speaker').user_id)
end

def tickets_sold
  self.attendees.where(user_role: 'user').count
end

def tickets_available
  max_tix = self.max_tix
  tix_sold = self.tickets_sold
  max_tix - tix_sold
end

def new_speaker_id
  self.attendees.find_by(user_role: 'speaker').user_id
end
=end



