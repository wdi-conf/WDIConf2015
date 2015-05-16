class PagesController < ApplicationController

	def index
		@speakers = User.where(role: 'speaker').order('name')
	end

end