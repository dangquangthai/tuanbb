# frozen_string_literal: true

module Admin
  class ArticlesComponent < ViewComponent::Base
    def initialize(articles:)
      @articles = articles
    end

    attr_reader :articles
  end
end
