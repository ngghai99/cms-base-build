class CLientsController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @clients = Client.all.filter_by(params).order(created: :asc)
  end

  def show;end

  def new
    @client_form = Client::CreateForm.new
  end

  def create
    @client_form = Client::CreateForm.new(user_params)
    handle_form_save('clients.save_article_sucessfully')
  end

  def edit
    @client_form = Client::UpdateForm.new(@admin_user)
  end

  def update
    @client_form = Client::UpdateForm.new(user_params)
    handle_form_save('clients.update_article_sucessfully')
  end

  def destroy
    @client.destroy
    redirect_to clients_url, notice: I18n.t('Destroyed successfully!')
  end

  private

  def set_user
    @client = Client.find(params[:id]).decorate
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :phone, :address, :birthday, :status, :gender, :email, :district_name, :ward_name, :type, images: [])
  end

  def handle_form_save(success_message)
    if @client_form.save
      redirect_to client_clients_path, notice: I18n.t(success_message)
    else
      render :new
    end
  end
end
