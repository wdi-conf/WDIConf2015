class PagesController < ApplicationController

	def index
		@events = Event.all
		@events_left = Event.first(8)
		@event_right = Event.last(8)
		@user = User.new
	end

end