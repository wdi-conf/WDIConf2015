class EventsController < ApplicationController

	def show
		@user = User.new
		@event = Event.find(params[:id])
		@users = @event.users
	end

end
