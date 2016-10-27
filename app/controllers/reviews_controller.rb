class ReviewsController < ApplicationController
  before_action :set_film, only: [:new, :create]
  def index
   @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.film_id = @film.id
    @review.reviewer_id = current_user.id
    if @review.save
      redirect_to film_path(@film)
    else
      @errors = @review.errors.full_messages
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :rating)
  end

  def set_film
    @film = Film.find(params[:film_id])
  end
end
