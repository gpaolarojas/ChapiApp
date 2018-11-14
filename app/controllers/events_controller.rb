class EventsController < ApplicationController
  def create
    @event = Event.create(event_params)
    render json: @event, status: :ok
  end

  def index
    events = Event.all
    to_resolve = Array.new
    events.each do |event| 
      new_event = {:lat => event.place.latitude, 
        :long => event.place.longitude, 
        :name => event.name, 
        :charge => event.charge, 
        :date => event.date
      }
      to_resolve.push(new_event)
    end

    render json: to_resolve, status: :ok
  end

  def show
    @event = Event.find(params[:id])
    render json: @event, status: :ok
  end

  private

  def event_params
    params.permit(:name, :date, :charge, :place_id)
  end
end
