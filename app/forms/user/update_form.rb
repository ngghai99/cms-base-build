class User::UpdateForm
  include ActiveModel::Model
  attr_accessor :name, :phone, :birthday, :status, :gender, :email, :address, :type, :image

  def initialize(params={})
    @params = params
    return unless params[:user].present?
    super(user_params)
  end

  def save
    if valid?
      update_user
    else
      false
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :phone, :address, :birthday, :status, :gender, :email, :district_name, :ward_name, :type, images: [])
  end

    def update_user
      User.update!(user_params)
    end
end

