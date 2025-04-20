# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  # in app/controllers/application_controller.rb
  def after_sign_in_path_for(resource)
    case resource.role
    when "admin"
      admin_dashboard_path
    when "teacher"
      teacher_dashboard_path
    when "student"
      student_dashboard_path
    else
      root_path
    end
  end

  def after_sign_in_path_for(resource)
    profile_path
  end
  

  # Checking the accecities
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, alert: "Access denied!"
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :phone, :address,:role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :phone, :address, :role])
  end
end
