class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        if User.find_by(name: params[:name])
            render json: {error: 'This user name already exists. Either login or enter another Username.'}
        else
            @user = User.create(params.permit(:name))
            render json: @user
        end
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
