class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  layout :layout_by_resource

  protected

  def after_sign_in_path_for(resource)
    if resource.is_admin?
      admin_dashboard_index_path
    elsif resource.is_client?
      root_path
    else
      false
    end
  end

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end

