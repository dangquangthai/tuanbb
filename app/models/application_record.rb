# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  scope :top, -> { order(position: :desc) }
  scope :bottom, -> { order(:position) }
  scope :published, -> { where.not(published_at: nil) }

  def published!
    update(published_at: Time.current, published: true)
  end

  def unpublished!
    update(published_at: nil, published: false)
  end
end
