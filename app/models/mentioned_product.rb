# frozen_string_literal: true

class MentionedProduct < ApplicationRecord
  belongs_to :product
  belongs_to :article
end
