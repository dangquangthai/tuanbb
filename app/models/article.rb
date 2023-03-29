# frozen_string_literal: true

class Article < ApplicationRecord
  has_many :mentioned_articles, dependent: :destroy
  has_many :other_articles, through: :mentioned_articles, source: :other_article, source_type: 'Article'

  has_rich_text :content
end
