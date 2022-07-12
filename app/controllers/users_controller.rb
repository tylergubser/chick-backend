class UsersController < ApplicationController

    def index 
        render json: User.all 
    end

    def create
        user = User.create(user_params)
        render json: user, status: :created
    end

    def show
        user = User.find(params[:id])
        render json: user
    end
end
