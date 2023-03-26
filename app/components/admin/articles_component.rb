# frozen_string_literal: true

module Admin
  class FeatureArticlesComponent < ViewComponent::Base
    def initialize(featured_articles:)
      @featured_articles = featured_articles
    end

    attr_reader :featured_articles
  end
end
