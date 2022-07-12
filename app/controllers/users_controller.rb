class UsersController < ApplicationController

    def index 
        render json: User.all 
    end

    def create
        user = User.find(params[:id])
        render json: user, status: :created
    end
end
