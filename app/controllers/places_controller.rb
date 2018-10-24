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
        @place = place.find(params[:id])
        render json: @place, status: :ok
    end
    

    private 
    def place_params
        params.permit(:name, :lattitude, :longitude, :direction)
    end
end
