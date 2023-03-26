class FeaturedArticle < ApplicationRecord
  belongs_to :featureable, polymorphic: true

  delegate :title, :slug, to: :featureable
end
