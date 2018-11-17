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
        :date => event.date,
        :id => event.id,
        :placeName => event.place.name,
        :image => event.image,
        :description_event => event.description_event

      }
      to_resolve.push(new_event)
    end

    render json: to_resolve, status: :ok
  end

  def show
    event = Event.find(params[:id])
    new_event = {:lat => event.place.latitude, 
        :long => event.place.longitude, 
        :name => event.name, 
        :charge => event.charge, 
        :date => event.date,
        :id => event.id,
        :placeName => event.place.name,
        :image => event.image,
        :description_event => event.description_event
      }
      
    render json: new_event, status: :ok
  end

  def update
    event =Event.find(params[:id])
    event.update(event_params)
    render json: event, status: :ok
  end

  
  private

  def event_params
    params.permit(:name, :date, :charge, :place_id, :description_event, :image)
  end
end
