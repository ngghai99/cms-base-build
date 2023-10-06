class Article::CreateForm
  include ActiveModel::Model
  attr_accessor :title, :content, :images, :status, :slug, :order, :article_catalogue_id, :params

  validates :title, presence: true
  validates :content, presence: true

  def initialize(params={})
    @params = params

    return unless params[:article_create_form].present?
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
    params.require(:article_create_form).permit(:title, :content, :image, :status, :description, :article_catalogue_id, images: [])
  end

  def create_article
    Article.create!(article_params)
  end
end
