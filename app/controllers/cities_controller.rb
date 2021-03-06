class CitiesController < ApplicationController

    def index
        @cities = City.order(:name)
        render json: @cities
    end

    def show
        @city = City.find(params[:id])
        render json: @city
    end

end
