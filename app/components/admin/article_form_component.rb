# frozen_string_literal: true

class Admin::ArticleFormComponent < ViewComponent::Base
  def initialize(article:)
    @article = article
  end

  attr_reader :article
end
