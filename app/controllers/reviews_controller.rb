class ReviewsController < ApplicationController

  def index
   @reviews = Review.all
  end

  def new
    @review = Review.new
    @film = Film.find(params[:film_id])
  end

  def create
    @review = Review.new(review_params)
    @review.film_id = params[:film_id]
    @review.reviewer_id = current_user.id
    @film = Film.find(params[:film_id])
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

end
