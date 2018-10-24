require 'json'

class UsersController < ApplicationController
    def create
        @user= User.create(user_params)
        render json: @user, status: :ok
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render status: :ok
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user, status: :ok
    end

    def find_categories
        user = User.find(params[:id])
        render json: user.categories, status: :ok
    end

    private
    def user_params
        a = params.permit(:name, :email, :phoneNumber )
        cat = JSON.parse(params[:categories])
        cat.map!{|c| Category.find(c)}
        a.merge :categories=>cat
    end
end
