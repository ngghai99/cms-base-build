class ApplicationService
  def intialize(current_user)
    @current_user = current_user
  end

  def current_user
    @current_user
  end
end
