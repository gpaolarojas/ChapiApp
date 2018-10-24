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

    private
    def categories_params
        params.permit(:name, :description)
    end
end
