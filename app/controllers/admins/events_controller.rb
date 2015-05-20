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
    current_speaker = @event.attendees.find_by(user_role: 'speaker')
    current_speaker.user_role = 'user'
    current_speaker.save

    # assign the role of 'speaker' to the selected attendee
    new_speaker = @event.attendees.find_by(user_id: params[:event][:new_speaker_id])
    new_speaker.user_role = 'speaker'
    new_speaker.save

    if @event.update(event_params.slice!(:new_speaker_id))
    # must remove new_speaker_id from the returned hash as it's not part of event
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
      params.require(:event).permit(:title, :description, :date_time, :max_tix, :new_speaker_id)
      # must include new_speaker_id here so it's returned by the form
    end

end