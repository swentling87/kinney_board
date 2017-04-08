class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      flash[:notice] = "Comment saved successfully."
      redirect_to [@post]
    else
      flash[:alert] = "Comment failed to save."
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body,:title)
  end
end
