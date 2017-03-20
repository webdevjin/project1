class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  private

  def clean_params
    params.require(:movie).permit(:name)
  end

end
