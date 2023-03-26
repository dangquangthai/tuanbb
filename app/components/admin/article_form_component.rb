# frozen_string_literal: true

class Admin::FeatureArticleFormComponent < ViewComponent::Base
  def initialize(featured_article:)
    @featured_article = featured_article
  end

  attr_reader :featured_article
end
