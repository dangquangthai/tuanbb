# frozen_string_literal: true

class Home::TrendItemComponent < ApplicationComponent
  def initialize(article:)
    @article = article
  end

  attr_reader :article
end
