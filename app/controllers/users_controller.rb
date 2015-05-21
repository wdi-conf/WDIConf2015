class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def show
		@events = current_user.events.order('date_time')
	end

	def create
		@event = Event.find(params[:user][:event_id])

		# create a new user
		@user = User.new(
			name: params[:user][:name],
			email: params[:user][:email],
			password: params[:user][:password],
			admin: false)

		if @user.save
			# Log the user in
			session[:user_id] = @user.id

			# Assign this user to the talk they wanted
			new_attendee = Attendee.new(user_id: @user.id, event_id: @event.id, user_role: 'user')
			if new_attendee.save
      	redirect_to user_path(@user.id), notice: "Woohoo! Your ticket has been booked!"
    	else
    		redirect_to :back, notice: "Something went wrong! Please try again."
    	end
    else
    	flash[:notice] = "Your account could not be created. Please try again."
      render "events/show"
    end
	end

	# joins a logged in user to an event without asking for their details again
	def join_event
		event = Event.find(params[:id])

		# don't add them if they are already attending this event
		unless event.attendees.find_by(user_id: current_user.id)
			new_attendee = Attendee.new(user_id: current_user.id, event_id: params[:id], user_role: 'user')

			# couldn't save the user to this event for some reason
			unless new_attendee.save
	  		render "events/show", notice: "Something went wrong! Please try again."
	  	end
	  end
	  redirect_to user_path(current_user.id), notice: "Woohoo! Your ticket has been booked!"
	end

end
