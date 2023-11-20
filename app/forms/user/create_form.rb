class User::CreateForm
  include ActiveModel::Model
  attr_accessor :name, :password, :password_confirmation, :phone, :address, :birthday, :status,
                :gender, :email, :district_name, :ward_name, :type, :image, :params, :image_url 

  def initialize(params={})
    @params = params

    return unless params[:user_create_form].present?
    super(params)
  end

  def save
    if valid?
      create_user
    else
      false
    end
  end

  private

  def create_user
    User.create!(params)
  end
end
