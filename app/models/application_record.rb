# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  scope :top, -> { order(position: :desc) }
  scope :published, -> { where.not(published_at: nil) }
end
