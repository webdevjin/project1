class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movies = Movie.new
  end

  def show
   @movie = Movie.find(params[:movie_id])
 end



 private

 def clean_params
   params.require(:movie).permit(:name)
 end


end
