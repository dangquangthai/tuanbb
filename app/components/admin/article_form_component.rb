# frozen_string_literal: true

module Admin
  class ArticleFormComponent < ViewComponent::Base
    def initialize(article:)
      @article = article
    end

    attr_reader :article
  end
end
