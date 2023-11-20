class Admin::UsersController < ApplicationController
  before_action :set_admin_user, only: [:show, :edit, :update, :destroy]
  before_action :permission_required, only: [:edit, :update, :destroy]

  def index
    @admin_clients = Client.all.filter_by(params).order(created_at: :asc).decorate
  end

  def show
  end

  def new
    @client_form = User::CreateForm.new
  end

  def create
    @client_form = User::CreateForm.new(create_user_params)
    handle_form_save('users.save_article_successfully')
  end

  def edit
    @client_form = User::UpdateForm.new(client: @admin_client).client
  end

  def update
    @client_form = User::UpdateForm.new(params: update_user_params, client: @admin_client)
    handle_form_save('users.update_article_successfully')
  end

  def destroy
    @admin_client.destroy
    redirect_to admin_users_url, notice: I18n.t('users.destroyed_successfully!')
  end

  private

  def update_user_params
    params.require(:client).permit(:name, :password, :password_confirmation, :phone, :address, :birthday, :status, :gender, :email, :district_name, :ward_name, :type, :image)
  end

  def create_user_params
    params.require(:user_create_form).permit(:name, :password, :password_confirmation, :phone, :address, :birthday, :status, :gender, :email, :district_name, :ward_name, :type, :image)
  end

  def set_admin_user
    @admin_client = Client.find(params[:id])
  end

  def permission_required
    redirect_to admin_users_url, notice: I18n.t('permission.You_do_not_have_permission_to_update_other_users.') unless @admin_client.check_permissions(current_user)
    true
  end

  def handle_form_save(success_message)
    if @client_form.save
      redirect_to admin_users_path, notice: I18n.t(success_message)
    else
      render :new
    end
  end
end
