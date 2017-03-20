class ForumsController < ApplicationController
  def show
    @forum = Forum.find(params[:id])
    # @movie = @forum.movie
  end

  private

  def clean_params
    params.require(:movie).permit(:name)
  end

end
