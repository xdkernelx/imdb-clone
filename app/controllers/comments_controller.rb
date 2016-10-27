class CommentsController < ApplicationController

  # def show
  #     @category = Category.find(params[:category_id])
  #     @article = Article.find(params[:id])
  #   end

    def new
      @comment = Comment.new
    end

    def create
      film_id = params[:comment][:film_id].to_s
      p filmRoute = '/films/' + film_id
      @comment = Comment.new(comment_params)
      p @comment.errors
      if @comment.save
        redirect_to filmRoute
      else
        redirect_to '/'
      end
    end

  #   def update
  #     Article.new(article_params)
  #     if Article.save
  #       redirect_to '/'
  #     else
  #       render 'show'
  #     end
  #   end

  #   def destroy

  #   end

    private

    def comment_params
      params.require(:comment).permit(:text, :review_id, :commenter_id)
    end
end
