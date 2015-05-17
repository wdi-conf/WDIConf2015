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
    if @event.update(event_params)
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

  def event_params
    params.require(:event).permit(:title, :description, :date_time, :max_tix)
  end

end