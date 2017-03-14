class AdminprintsController < ApplicationController
  before_action :authenticate_admin!
  
  def create
    @print = Print.create(print_params)
    redirect_to adminprints_path
  end

  def index
    @prints = Print.all
  end
  

  def new
    @print = Print.new
  end


  private

  def print_params
    params.require(:print).permit(:poster, :venue, :location, :date, :artist)
  end
end
