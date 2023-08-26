class Admin::ArticlesController < ApplicationController
  before_action :set_admin_article, only: [:show, :edit, :update, :destroy]

  def index
    @admin_articles = Article.all.order(title: :asc)
  end

  def show
  end

  def new
    @admin_article = Article.new
  end

  def create
    @admin_article = Article.new(admin_article_params)
    if @admin_article.save
      redirect_to admin_articles_path, notice: I18n.t('Article was successfully created!')
    else
      render :new
    end
  end

  def update
    if @admin_article.update(admin_article_params)
      redirect_to admin_articles_path, notice: I18n.t('Article was successfully updated')
    else
      render :edit
    end
  end

  def destroy
    @admin_article.destroy
    redirect_to admin_articles_url, notice: I18n.t('Destroyed successfully!')
  end

  private

  def set_admin_article
    @admin_article = Article.find(params[:id])
  end

  def admin_article_params
    params.require(:article).permit(:title, :image, :status, :description, :article_catalogue_id)
  end
end
