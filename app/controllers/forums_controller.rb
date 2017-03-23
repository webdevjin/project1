class ForumsController < ApplicationController
  before_action :authenticate_user, only: [:edit, :update, :create, :new, :destroy]

  def show
    @forum = Forum.find(params[:id])
    @post = Post.new
    # @movie = @forum.movie
  end

  def new
    @forum  = Forum.new
    @forum_id = params[:forum]
  end

  def create
# raise params

    @forum = Forum.new(clean_params)

    @forum.user = @current_user

    if @forum.save
      redirect_to forum_path(@forum.id)
    else
      render :new
    end
  end


  private

  def clean_params
    params.require(:forum).permit(:name, :movie_id, :post_id)
  end

end
