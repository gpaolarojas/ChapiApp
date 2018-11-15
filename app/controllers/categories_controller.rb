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
        a = params.permit(:name, :description)
        eve = JSON.parse(params[:events])
        eve.map!{|c| Event.find(c)}
        a.merge :events=>eve
    end

end
