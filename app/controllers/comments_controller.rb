class CommentsController < ApplicationController

  def new
  end

  def create
    # debugger
    @post = Post.find_by(id: params[:post_id])
    @comment = @post.comments.build(comment_params)
    if @comment.save
      redirect_to  post_path(@post)
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
