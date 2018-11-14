class EventsController < ApplicationController
  def create
    @event = Event.create(event_params)
    render json: @event, status: :ok
  end

  def index
    events = Event.all
    events.map!{|event| event.merge({:lat => event.place.latitude, :long => event.place.longitude})}
    render json: events, status: :ok
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
