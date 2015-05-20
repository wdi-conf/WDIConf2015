class Event < ActiveRecord::Base
	has_many :attendees
	has_many :users, through: :attendees
	validates :title, :description, :date_time, :max_tix ,presence: true


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
end

