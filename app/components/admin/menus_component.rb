# frozen_string_literal: true

module Admin
  class FeatureMenusComponent < ViewComponent::Base
    def initialize(featured_menus:)
      @featured_menus = featured_menus
    end

    attr_reader :featured_menus
  end
end
