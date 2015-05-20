class PagesController < ApplicationController

	def index
		@events = Event.all
		@user = User.new
	end

end