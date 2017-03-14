class PrintsController < ApplicationController

  def index
    @prints = Print.all
  end
  
  def show
    @print = Print.find(params[:id])
    @comment = Comment.new
  end

  private

  def print_params
    params.require(:print).permit(:poster, :venue, :location, :date, :artist)
  end

end