class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		# create a new user
		@user = User.new( name: params[:user][:name], email: params[:user][:email], password: params[:user][:password], role: :user)

		if @user.save
				# Assign this user to the talk they wanted
				new_attendee = Attendee.new(user_id: @user.id, event_id: params[:user][:event_id])
				if new_attendee.save
        	redirect_to root_path
      	else
      		redirect_to :back
      	end
      else
        render :new
      end
	end


end
