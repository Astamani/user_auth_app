# # app/controllers/admin/dashboard_controller.rb
# class Admin::DashboardController < ApplicationController
#   before_action :authenticate_user!
#   before_action :only_admins
#   load_and_authorize_resource
#   def index
#     # admin-specific data here
#   end

#   private

#   def only_admins
#     redirect_to root_path unless current_user.admin?
#   end
# end
module Admin::DashboardHelper
end
