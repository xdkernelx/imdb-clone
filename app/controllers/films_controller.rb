class FilmsController < ApplicationController

  def index
    @films = Film.all
    @categories = Category.all
  end

  def show
    @film = Film.find(params[:id])
    @comment = Comment.new
    @trusted_reviews = @film.trusted_reviews
    @people_reviews = @film.regular_reviews
  end
end
