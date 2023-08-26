class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all.order(title: :asc)
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path, notice: I18n.t('Article was successfully created!')
    else
      render :new
    end
  end

  def update
    @article = Article.update(article_params)
    if @article.save
    redirect_to articles_path, notice: I18n.t('Article was successfully updated')
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_url, notice: I18n.t('Destroyed successfully!')
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :image, :status, :description, :article_catalogue_id)
  end


end
