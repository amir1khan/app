class PostsController < ApplicationController

  def index
    @posts = Post.all.paginate(page: params[:page], per_page: 3)
  end

  def search
    @posts=Post.where("title LIKE ?","%" + params[:q]+"%")
  end

  def show
    @post=Post.find(params[:id])
    @comments = @post.comments.order('created_at DESC').paginate(:page => params[:page], :per_page => 3)


  end

  def new
    @post=Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to  posts_path
  end

  def edit
    @post=Post.find(params[:id])
  end

  def update
    @post=Post.find(params[:id])
    @post.update(post_params)

    redirect_to posts_path(@post)
  end

  def destroy
    @post=Post.find(params[:id])
    @post.destroy

  end

  private

  def post_params
    params.require(:post).permit(:title, :description)
  end
end
