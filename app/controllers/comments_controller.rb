class CommentsController < ApplicationController

  # def show
  #     @category = Category.find(params[:category_id])
  #     @article = Article.find(params[:id])
  #   end

    def new
      @comment = Comment.new
    end

    def create
      params[:comment][:commenter_id] = current_user.id
      @comment = Comment.new(comment_params)
      if @comment.save
        redirect_to '/films/1'
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
