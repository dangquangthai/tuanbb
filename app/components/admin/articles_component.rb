# frozen_string_literal: true

class Admin::ArticlesComponent < ApplicationComponent
  def initialize(articles:)
    @articles = articles
  end

  attr_reader :articles
end
