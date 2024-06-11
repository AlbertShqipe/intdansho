class ApplicationController < ActionController::Base
  before_action :show_splash

  def show_splash
    # Check if the splash page has been shown before
    unless session[:splash_shown]
      session[:splash_shown] = true
      redirect_to accueil_path and return
    end
  end
end
