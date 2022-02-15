class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def create
    @post =  Post.create(post_params)
    if @post.save
      redirect_to posts_path notice: "Your Post was saved"
    else
      render "new"
    end
  end

  def show
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end