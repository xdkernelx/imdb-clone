class CategoriesController < ApplicationController

  def index
   @categories = Category.all
  end

  def show
  	@category = Category.find(params[:id])
  	@films = Film.select {|film| film.category_id == @category.id}
  end

end

#test