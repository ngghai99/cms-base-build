class Article::UpdateForm
  include ActiveModel::Model
  attr_accessor :title, :content, :images, :status, :slug, :order, :article_catalogue_id, :params, :article

  def initialize(params={})
    @article = Article.find_by(id: params[:id])
    @params = params

    return unless params[:article].present? && @article.present?
    super(article_params)
  end

  def save
    if valid?
      update_article
    else
      false
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :image, :status, :description, :article_catalogue_id, images: [])
  end

  def update_article
    Article.update!(article_params)
  end
end
