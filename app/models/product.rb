# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :mentioned_products, dependent: :destroy
  has_many :articles, through: :mentioned_products, source: :article, source_type: 'Article'

  has_rich_text :content
end
