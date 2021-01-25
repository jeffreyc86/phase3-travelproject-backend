class CitiesController < ApplicationController

    def index
        @cities = City.all
        render json: @cities
    end

    def show
        @city = City.find(params[:id])
        @videos = @city.videos
        render json: @city
    end

end
