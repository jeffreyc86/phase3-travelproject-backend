class CommentsController < ApplicationController

    def create
        @comment = Comment.create(comment_params)
        render json: @comment
    end

    def update
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        render json: @comment
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        render json: @comment
    end

    private

    def comment_params
        params.permit(video_id, user_id, comment)
    end
    
end
