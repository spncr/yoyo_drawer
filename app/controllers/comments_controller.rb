class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.yoyo_id = params[:yoyo_id]

    @comment.save

    redirect_to yoyo_path(@comment.yoyo)
  end

  private
  def comment_params
    params.require(:comment).permit(:author_name, :author_email, :content)
  end
end
