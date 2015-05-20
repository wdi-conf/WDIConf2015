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
end

create_table "events", force: :cascade do |t|
	t.string   "title"
	t.text     "description"
	t.datetime "date_time",   null: false
	t.integer  "max_tix",     null: false
end