# frozen_string_literal: true

module Admin
  class MenusComponent < ViewComponent::Base
    def initialize(menus:)
      @menus = menus
    end

    attr_reader :menus
  end
end
