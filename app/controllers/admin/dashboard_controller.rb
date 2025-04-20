class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :verify_admin

  def index
    @users = User.all.order(created_at: :desc)
  end

  private

  def verify_admin
    redirect_to root_path, alert: "Access denied!" unless current_user&.role == 'admin'
  end
end
