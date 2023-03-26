class Featured < ApplicationRecord
  belongs_to :article

  validates :position, numericality: { only_integer: true }, allow_blank: true
end
