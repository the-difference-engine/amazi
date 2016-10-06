class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  private

  def authenticate_admin!
    redirect_to "/" unless current_user && current_user.admin?
  end
end
