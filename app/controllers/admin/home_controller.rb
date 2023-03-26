# frozen_string_literal: true

module Admin
  class HomeController < BaseController
    def index
      @featured_menus = FeaturedMenu.all
      @featured_articles = FeaturedArticle.all
    end
  end
end
