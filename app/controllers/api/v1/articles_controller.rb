class Api::V1::ArticlesController < ApplicationController
  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_user!, :raise => false

  def index
    articles = Article.all
    render json: articles
  end

  def show
    article = Article.find(params[:id])
    render json: article
  end
end
