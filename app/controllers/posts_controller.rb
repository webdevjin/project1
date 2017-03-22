class PostsController < ApplicationController
  before_action :authenticate_user, only: [:edit, :update, :create, :new, :destroy]


  def show
    @post = Post.find(params[:id])
    @post = Post.new
  end

  def new
    @post = Post.new
    @forum_id = params[:forum_id]
  end

  def create
      @post = Post.new(clean_params)

      @post.user = @current_user

      if @post.save
        redirect_to forum_path(@post.forum_id)
      else
        render :new
      end
    end

  private

  def clean_params
    params.require(:post).permit(:message, :image, :forum_id)
  end

end
