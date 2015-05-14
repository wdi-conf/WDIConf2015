class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def show
		@event = Event.find(params[:id])
		@speaker = @event.users.where(role: 'speaker').first
		@users = @event.users
	end

end
