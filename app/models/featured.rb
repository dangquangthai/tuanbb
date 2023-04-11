# frozen_string_literal: true

class Featured < ApplicationRecord
  KINDS = %w[auto_show top_5].freeze

  belongs_to :article

  validates :position, numericality: { only_integer: true }, allow_blank: true

  delegate :title, :slug, :content, to: :article, allow_nil: true

  scope :auto_show, -> { where(kind: :auto_show) }
  scope :top_5, -> { where(kind: :top_5) }
end
