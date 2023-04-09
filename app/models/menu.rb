# frozen_string_literal: true

class Menu < ApplicationRecord
  belongs_to :article

  validates :position, numericality: { only_integer: true }, allow_blank: true

  scope :top, -> { order(position: :desc) }
  scope :bottom, -> { order(:position) }
  scope :right_of_logo, -> { where(kind: :right_of_logo) }
  scope :below_of_logo, -> { where(kind: :below_of_logo) }
end
