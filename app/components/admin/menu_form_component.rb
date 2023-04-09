# frozen_string_literal: true

module Admin
  class MenuFormComponent < ApplicationComponent
    def initialize(menu:, save_url:)
      @menu = menu
      @save_url = save_url
      @turbo_method = menu.persisted? ? :patch : :post
    end

    attr_reader :menu, :save_url, :turbo_method
  end
end
