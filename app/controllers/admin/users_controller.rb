class Admin::UsersController < ApplicationController
  before_action :set_admin_user, only: [:show, :edit, :update, :destroy]

  def index
    @admin_users = User.all.filter_by(params).order(created_at: :asc).decorate
  end

  def show
  end

  def new
    @user_form = User::CreateForm.new
  end

  def create
    @user_form = User::CreateForm.new(params)
    handle_form_save('users.save_article_successfully')
  end

  def edit
    @user_form = User::UpdateForm.new(@admin_user)
  end

  def update
    @user_form = User::UpdateForm.new(params)
    handle_form_save('users.update_article_successfully')
  end

  def destroy
    @admin_user.destroy
    redirect_to admin_users_url, notice: I18n.t('users.destroyed_successfully!')
  end

  private

  def set_admin_user
    @admin_user = User.find(params[:id]).decorate
  end

  def handle_form_save(success_message)
    if @user_form.save
      redirect_to admin_users_path, notice: I18n.t(success_message)
    else
      render :new
    end
  end
end
