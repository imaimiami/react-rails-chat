class Api::CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: @comments
  end

  def create
    Comment.create!(create_params)
    @comments = Comment.all
    render json: @comments
  end

  private
  def create_params
    params.require(:comment).permit(:author, :text)
  end
end
