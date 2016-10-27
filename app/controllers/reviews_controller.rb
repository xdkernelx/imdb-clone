class ReviewsController < ApplicationController

  def index
   @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(params)
  end

end
