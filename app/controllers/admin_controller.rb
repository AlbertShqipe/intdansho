class AdminController < ApplicationController
  before_action :check_if_admin
  before_action :authenticate_user!

  private

  def check_if_admin
    redirect_to(accueil_path) unless current_user.admin?
  end
end
