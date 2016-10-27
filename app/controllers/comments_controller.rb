class CommentsController < ApplicationController

  # def show
  #     @category = Category.find(params[:category_id])
  #     @article = Article.find(params[:id])
  #   end

  #   def new
  #     @article = Article.new
  #   end

  #   def edit

  #   end

  #   def create
  #     @category = Category.find(params[:category_id])
  #     @article = @category.articles.new(article_params)
  #     if @article.save
  #       redirect_to category_article_path(@category, @article)
  #     else
  #       p @article.errors
  #       render 'show'
  #     end
  #   end

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

  #   private

  #   def article_params
  #     params.require(:article).permit(:title, :author, :body, :email, :category_id)
  #   end
end
