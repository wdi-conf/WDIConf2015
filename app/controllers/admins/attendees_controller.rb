class Admins::AttendeesController < AdminsController

  def create
    @attendee = Attendee.new(attendee_params)
    #new_attendee = Attendee.new(user_id: @user.id, event_id: @event.id, user_role: 'user')

    if @attendee.save
      redirect_to '/admin/attendees'
    else
      render :new
    end
  end

  def new
    @attendee = Attendee.new
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @attendees = @event.users
  end

  def destroy
    # would have perhaps been better to use nested resources, but not enough time.
    @attendence = Attendee.find_by(:event_id => params[:event_id], :user_id => params[:id])
    @attendence.destroy

    redirect_to "/admins/attendees/#{params[:event_id]}"  #todo may be a helper method for this?
  end

  private

  def attendee_params
    params.require(:attendee).permit(:title, :description, :date_time, :max_tix)   #JLW -don't seem to have to put event_id in here. Weird.
  end

end


