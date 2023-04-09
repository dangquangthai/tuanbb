# frozen_string_literal: true

class Featured < ApplicationRecord
  belongs_to :article

  validates :position, numericality: { only_integer: true }, allow_blank: true

  delegate :title, :slug, to: :article, allow_nil: true
end
