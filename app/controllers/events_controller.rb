class EventsController < ApplicationController

	def index
		@events = Event.order("date_time")
	end

	def show
		@event = Event.find(params[:id])
		@users = @event.users
	end

end
