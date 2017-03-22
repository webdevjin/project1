class MoviesController < ApplicationController
   before_action :authenticate_user, only: [:edit, :update, :new, :destroy]


  def index
    @movies = Movie.all.order :name
    @movie = Movie.new

    @recently_added = Movie.all.order('created_at DESC').take(5)
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(clean_params)

    @movie.user = @current_user

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @movie.image = req["public_id"]
    end

    if @movie.save
      redirect_to movie_path(@movie.id)
    else
      render :new
    end
  end

  def show
   @movie = Movie.find(params[:id])
   @forum = Forum.new
 end

 private

 def clean_params
   params.require(:movie).permit(:name)
 end

end
