class Client::UpdateForm
  include ActiveModel::Model
  attr_accessor :name, :password, :password_confirmation, :phone, :address, :birthday, :status,
                :gender, :email, :district_name, :ward_name, :type, :image, :params, :client, :image_url

  def initialize(params)
    @client = params[:client] || Client.find_by(id: params[:id])

    @params = params
    return unless params[:client].present? && @client.present?
    super(params)
  end

  def save
    if valid?
      update_client
    else
      false
    end
  end

  private

  def update_client
    client.update!(params)
  end
end

