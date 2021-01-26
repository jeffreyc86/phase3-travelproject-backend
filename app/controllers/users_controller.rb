class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.create(params.permit(:name))
        render json: @user
    end

    def login
        @user = User.find_by(name: params[:username])
            if @user
                render json: @user
            else
                render json: {error: 'This user does not exist. Please try again or Sign Up'}
            end
    end

end
