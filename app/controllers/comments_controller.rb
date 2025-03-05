class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment was successfully created."
      redirect_to comments_path
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
