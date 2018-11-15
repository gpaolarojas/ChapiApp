class CategoriesController < ApplicationController

    def create
        @category= Category.create(categories_params)
        render json: @category, status: :ok
    end

    def index
        categories = Category.all
        render json: categories, status: :ok
    end
    
    def show
        @category = Category.find(params[:id])
    end
    
    def find_events
    category = Category.find(params[:id])

        render json: category.events, status: :ok
    end

    private
    def categories_params
        category_tmp = params.permit(:name, :description)
        events_json = JSON.parse(params[:events])
        events_json.map!{|e| Event.find(e)}
        category_tmp.merge :events=>events_json
    end

end
