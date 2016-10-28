class CommentsController < ApplicationController

    def new
      @comment = Comment.new
    end

    def create
      film_id = params[:comment][:film_id].to_s
      filmRoute = '/films/' + film_id
      @comment = Comment.new(comment_params)
      if @comment.save
        redirect_to filmRoute
      else
        redirect_to '/'
      end
    end

    private

    def comment_params
      params.require(:comment).permit(:text, :review_id, :commenter_id)
    end
end
