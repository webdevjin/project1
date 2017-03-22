class ForumsController < ApplicationController

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
    @forum = Forum.new(clean_params)
    if @forum.save
      redirect_to forum_path(@forum.id)
    else
      render :new
    end
  end


  private

  def clean_params
    params.require(:forum).permit(:name)
  end

end
