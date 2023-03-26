class Article < ApplicationRecord
  has_many :mentioned_products, dependent: :destroy
  has_many :products, through: :mentioned_products, source: :product, source_type: 'Product'

  has_rich_text :content
end
