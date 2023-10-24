class User::UpdateForm
  include ActiveModel::Model
  attr_accessor :name, :password, :password_confirmation, :phone, :address, :birthday, :status,
                :gender, :email, :district_name, :ward_name, :type, :image, :params, :user

  def initialize(params={}, user=nil)
    @user = user
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

  def update_user
    user.update!(params)
  end
end

