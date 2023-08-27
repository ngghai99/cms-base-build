class Article < ApplicationRecord
  validates :title, presence: true
  enum status: [:active, :archived]
end
