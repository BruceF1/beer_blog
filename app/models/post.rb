class Post < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :content

  has_one_attached :image
end
