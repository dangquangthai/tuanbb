# frozen_string_literal: true

class Featured < ApplicationRecord
  KINDS = %w[auto_show trending].freeze

  belongs_to :article

  validates :position, numericality: { only_integer: true }, allow_blank: true

  delegate :title, :slug, :content, :standfirst, :price, to: :article, allow_nil: true

  scope :auto_show, -> { where(kind: :auto_show) }
  scope :trending, -> { where(kind: :trending) }
  scope :not_article, -> (article_id) { includes(:article).where.not(article: { id: article_id }) }
end
