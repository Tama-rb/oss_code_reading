class NewsPaper < ApplicationRecord
  include Useful

  validates :title, presence: true
  validates :status, presence: true

  enum status: { draft: 0, published: 1 }
end
