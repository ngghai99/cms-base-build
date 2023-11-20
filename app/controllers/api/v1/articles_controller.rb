class Api::V1::ArticlesController < ApplicationController
  include Pagination
  skip_before_action :verify_authenticity_token
  skip_before_action :authenticate_user!, :raise => false

  def index
    articles = Article.all.order(created_at: :desc).page(params[:page]).per(5)
    result = resources_with_pagination(articles)
    render json: result
  end

  def show
    article = Article.find(params[:id])
    render json: article
  end
end
