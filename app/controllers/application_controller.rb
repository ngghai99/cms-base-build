class ApplicationController < ActionController::Base
  layout :layout_by_resource

  protected

  def after_sign_in_path_for(resource)
    dashboard_index_path
  end

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end
end
