class AdminprintsController < ApplicationController
  before_action :authenticate_admin!
  
  def create
    @print = Print.create(print_params)
    redirect_to adminprints_path
  end

  def index
    @prints = Print.all
  end

  def show
    @print = Print.find(params[:id])
  end
  

  def new
    @print = Print.new
  end

  def destroy
    @print = Print.find(params[:id])
    @print.destroy
    redirect_to adminprints_path
  end

  def edit
    @print = Print.find(params[:id])
  end

  def update
    @print = Print.find(params[:id])
    @print.update_attributes(print_params)
    redirect_to adminprints_path
  end


  private

  def print_params
    params.require(:print).permit(:poster, :venue, :location, :date, :artist)
  end
end
