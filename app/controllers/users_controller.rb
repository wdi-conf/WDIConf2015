class UsersController < ApplicationController

	def create
		User.create(user_params)
		redirect_to events_path
	end

	private
		def user_params
			params.permit(:name, :email)
		end
end
