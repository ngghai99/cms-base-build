class ArticleCategory < ApplicationRecord
  belongs_to :parent, class_name: 'ArticleCategory', optional: true
  has_many :children, class_name: 'ArticleCategory', foreign_key: 'parent_id'

  validates :name, presence: true
end
