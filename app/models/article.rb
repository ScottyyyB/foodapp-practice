class Article < ApplicationRecord
  has_many :comments
  validates :title, presence: true
  validates :content, presence: true
  validates_format_of :email, with: /\A\w[a-zA-Z0-9._-]*\@[a-z]+\.[a-z]+\Z/
end
