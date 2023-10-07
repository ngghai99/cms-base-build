class Admin::ArticlesController < ApplicationController
  before_action :set_admin_article, only: [:show, :edit, :update, :destroy]

  def index
    @admin_articles = Article.all.filter_by(params).order(title: :asc)
  end

  def show;end

  def new
    @article_form = Article::CreateForm.new
  end

  def create
    @article_form = Article::CreateForm.new(params)
    handle_form_save('articles.save_article_sucessfully')
  end

  def edit
    @article_form = Article::UpdateForm.new(@admin_article).params
  end

  def update
    @article_form = Article::UpdateForm.new(params)
    handle_form_save('articles.update_article_sucessfully')
  end

  def destroy
    @admin_article.destroy
    redirect_to admin_articles_url, notice: I18n.t('Destroyed successfully!')
  end

  private

  def set_admin_article
    @admin_article = Article.find(params[:id])
  end

  def handle_form_save(success_message)
    if @article_form.save
      redirect_to admin_articles_path, notice: I18n.t(success_message)
    else
      render :new
    end
  end
end
