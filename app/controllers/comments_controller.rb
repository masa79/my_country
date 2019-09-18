class CommentsController < ApplicationController

  def index
    @comments = Comment.where(comment_params)
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save
  end

  private

  def comment_params
    params.permit(:text, :local_id).merge(user_id: current_user.id)
  end

end