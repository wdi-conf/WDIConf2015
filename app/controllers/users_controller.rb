class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def show
		@events = current_user.events
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
			new_attendee = Attendee.new(user_id: @user.id, event_id: @event.id, role: 'user')
			if new_attendee.save
      	redirect_to user_path(@user.id), notice: "Woohoo! Your ticket has been booked!"
    	else
    		redirect_to :back, alert: "Something went wrong! Please try again."
    	end
    else
      render :new
    end
	end

	# joins a logged in user to an event without asking for their details again
	def join_event
		new_attendee = Attendee.new(user_id: current_user.id, event_id: params[:id], role: 'user')

		if new_attendee.save
    	redirect_to user_path, alert: "Woohoo! Your ticket has been booked!"
  	else
  		render :show, alert: "Something went wrong! Please try again."
  	end

	end

end
