# frozen_string_literal: true

module Admin
  class FeaturedFormComponent < ApplicationComponent
    def initialize(featured:, save_url:)
      @featured = featured
      @save_url = save_url
      @turbo_method = featured.persisted? ? :patch : :post
    end

    attr_reader :featured, :save_url, :turbo_method
  end
end
