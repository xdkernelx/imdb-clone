class ReviewsController < ApplicationController

  def index
   @reviews = Review.all
  end

  def new
    @review = Review.new
    @film = Film.find(params[:film_id])
  end

  def create
    puts "*****"
    p params
    # @review = Review.create(params)
  end

  # def post
  #   puts "*****"
  #   p params
  # end

end
