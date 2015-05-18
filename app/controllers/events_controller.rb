class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def show
		@user = User.new
		@event = Event.find(params[:id])
		@users = @event.users
	end

end
