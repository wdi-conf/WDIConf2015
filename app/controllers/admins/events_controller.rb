class Admins::EventsController < AdminsController

  def create
    @event = Event.new(event_params)
  end

  def new
    @event = Event.new
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    # set current speaker's role to 'user'
    current_speaker = @event.attendees.find_by(user_id: params[:event][:attendee_id])
    current_speaker.user_role = 'user'
    current_speaker.save

    # assign the role of 'speaker' to the selected attendee
    new_speaker = @event.attendees.find_by(user_id: params[:event][:attendee_id])
    new_speaker.user_role = 'speaker'
    new_speaker.save

    # binding.pry
    if @event.update(event_params.slice!(:attendee_id)) # can't save attendee_id for event
      redirect_to '/admins/events'
    else
      render :edit
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to '/admins/events'
  end

  private

    def event_params
      params.require(:event).permit(:title, :description, :date_time, :max_tix, :attendee_id)
    end

end