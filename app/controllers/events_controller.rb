class EventsController < ApplicationController
<<<<<<< HEAD
  def create
    @event = Event.create(event_params)
  end
=======
    def create
      @event =  Event.create(event_params)
      render json: @event, status: :ok
    end
>>>>>>> 49aca78a250907b9198ee77b182aad1f1ffb4c36

  def index
    events = Event.all
    render json: events, status: :ok
  end

  def show
    @event = Event.find(params[:id])
    render json: @event, status: :ok
  end

<<<<<<< HEAD
  private
=======
    private
    def event_params
      params.permit(:name, :date, :charge, :place_id)
    end
>>>>>>> 49aca78a250907b9198ee77b182aad1f1ffb4c36

  def event_params
    params.permit(:name, :date, :charge)
  end
end
