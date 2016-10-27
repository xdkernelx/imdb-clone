class CategoriesController < ApplicationController

  def index
   @categories = Category.all
  end

  def show
  	@category = Category.find(params[:id])
  	@films = @category.films
  end

end
