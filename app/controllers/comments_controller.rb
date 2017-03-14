class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @print = Print.find(params[:print_id])
    @print.comments.create(comment_params.merge(user: current_user))
    redirect_to print_path(@print)
  end

  private

  def comment_params
    params.require(:comment).permit(:message)
  end
end
