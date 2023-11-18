class Article::UpdateForm
  include ActiveModel::Model
  attr_accessor :title, :content, :images, :status, :slug, :order, :article_catalogue_id, :params, :article, :mini_description

  def initialize(params={}, article_id='')
    params.delete(:images) if params[:images].present? && params[:images] == [""]
    @article = Article.find_by(id: article_id)

    @params = params
    return unless params[:article].present? && @article.present?
    super(params)
  end

  def save
    if valid?
      update_article
    else
      false
    end
  end

  private

  def update_article
    article.update!(params)
  end
end
