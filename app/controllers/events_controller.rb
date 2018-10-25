class EventsController < ApplicationController
  def create
    @event = Event.create(event_params)
    render json: @event, status: :ok
  end

  def index
    events = Event.all
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
