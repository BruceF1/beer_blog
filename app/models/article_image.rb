class ArticleImage < ApplicationRecord
  has_one_attached :image, :dependant => :destroy
end