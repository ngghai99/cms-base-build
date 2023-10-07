class Article::UpdateForm
  include ActiveModel::Model
  attr_accessor :title, :content, :images, :status, :slug, :order, :article_catalogue_id, :params

  def initialize(params={})
    @params = params

    return unless params[:article].present?
    super(article_params)
  end

  def save
    if valid?
      create_article
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
