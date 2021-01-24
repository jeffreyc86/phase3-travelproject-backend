class VideosController < ApplicationController

    def index
        @videos = Video.all
        render json: @videos
    end

    def show
        @video = Video.find(params[:id])
        @comments = @video.comments
        @video[:comments] = @comments
        render json: @video
    end

    def create
        @video = Video.create(video_params)
        render json: @video
    end

    def update
        @video = Video.find(params[:id])
        @video.update(video_params)
        render json: @video
    end

    def destroy
        @video = Video.find(params[:id])
        @video.destroy
        render json: @video
    end

    private

    def video_params
        params.permit(city_id, user_id, title, category, video_url, likes)
    end

end
