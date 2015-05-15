class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@event = Event.find(params[:user][:event_id])

		# create a new user
		@user = User.new( name: params[:user][:name], email: params[:user][:email], password: params[:user][:password], role: :user)

		if @user.save
				# Assign this user to the talk they wanted
				new_attendee = Attendee.new(user_id: @user.id, event_id: @event.id)
				if new_attendee.save
        	redirect_to root_path, notice: "Woohoo! Your ticket has been booked!"
      	else
      		redirect_to :back, alert: "Something went wrong! Please try again."
      	end
      else
        render :new
      end
	end


end
