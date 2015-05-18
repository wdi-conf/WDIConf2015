class Event < ActiveRecord::Base
	has_many :attendees
	has_many :users, through: :attendees


	def speaker
		User.find(self.attendees.find_by(user_role: 'speaker').user_id)
	end

	def tickets_available
		max_tix = self.max_tix
		tix_sold = self.attendees.where(user_role: 'user').count
		max_tix - tix_sold
	end
end
