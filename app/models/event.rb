class Event < ActiveRecord::Base
	has_many :attendees
	has_many :users, through: :attendees


	def speaker
		self.users.where(role: 'speaker').first
	end

	def tickets_available
		max_tix = self.max_tix
		tix_sold = self.users.count -1 # minus 1 because the speaker is included in Event.users
		max_tix - tix_sold
	end
end
