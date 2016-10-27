class FilmsController < ApplicationController

  def index
    @films = Film.all
  end

  def show
    @film = Film.find(params[:id])
    @comment = Comment.new
  end

end
