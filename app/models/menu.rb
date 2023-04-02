# frozen_string_literal: true

class Menu < ApplicationRecord
  belongs_to :article

  validates :position, numericality: { only_integer: true }, allow_blank: true

  scope :top, -> { order(position: :desc) }

  delegate :title, :slug, to: :article, allow_nil: true
end
