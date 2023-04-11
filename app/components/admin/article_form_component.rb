# frozen_string_literal: true

class Admin::ArticleFormComponent < ApplicationComponent
  def initialize(article:, save_url:)
      @article = article
      @save_url = save_url
      @turbo_method = article.persisted? ? :patch : :post
    end

    attr_reader :article, :save_url, :turbo_method
end
