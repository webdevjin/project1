class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movies = Movie.new
  end

  def show

  end


end
