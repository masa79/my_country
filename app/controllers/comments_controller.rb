class CommentsController < ApplicationController

  def index
    @comments = Comment.where(comment_params)
  end

  def create
    @comment = Comment.new(text: comment_params[:text], local_id: comment_params[:local_id], user_id: current_user.id)
    @comment.save
    redirect_to action: "index"
  end

  private

  def comment_params
    params.permit(:text, :local_id)
  end

end