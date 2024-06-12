class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :check_if_admin

  def tarif
  end

  private

  def check_if_admin
    redirect_to(root_path) unless current_user.admin?
  end
end
