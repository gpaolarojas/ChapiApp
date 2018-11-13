class PlacesController < ApplicationController
  def create
    @place = Place.create(place_params)
    #  @place = Place.create({})
    render json: @place, status: :created
  end

  def index
    places = Place.all
    render json: places, status: :ok
  end

  def show
    @place = Place.find(params[:id])
    render json: @place, status: :ok
  end

  def event_places
    place = Place.find(params[:id])
    event_places = place.events
    render json: event_places, status: :ok
  end

  def update
    place = Place.find(params[:id])
    place.update(place_params)
    render json: place, status: :ok
  end

  def find_place_location
    place = Place.find_by(latitude: params[:latitude], longitude: params[:longitude])
    event = Event.find(place.id)
    render json: event, status: :ok
  end

  private

  def place_params
    params.permit(:name, :latitude, :longitude, :address)
  end
end
