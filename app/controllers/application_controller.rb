class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authorize_admin
    redirect_to :back, status: 401 unless current_user.authorize_admin
  end
end
