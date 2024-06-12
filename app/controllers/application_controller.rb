class ApplicationController < ActionController::Base
  before_action :show_splash

  protected

  # Override the method to redirect to the desired URL after sign out
  def after_sign_in_path_for(resource)
    accueil_path  # Change this to any other path you want, e.g., new_user_session_path
  end

  def show_splash
    # Check if the splash page has been shown before
    unless session[:splash_shown]
      session[:splash_shown] = true
      redirect_to accueil_path and return
    end
  end
end
