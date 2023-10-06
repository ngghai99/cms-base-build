class \ádsadsad::UpdateForm
  include ActiveModel::Model
  attr_accessor :title, :content, :images, :status, :slug, :order, :article_catalogue_id

  validates :title, presence: true
  validates :content, presence: true

  def initialize(params={})
    @params = params
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
    Article.update!(@params)
  end
end
