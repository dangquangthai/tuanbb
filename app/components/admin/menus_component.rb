# frozen_string_literal: true

module Admin
  class MenusComponent < ApplicationComponent
    def initialize(menus:, kind:)
      @menus = menus
      @kind = kind
    end

    attr_reader :menus, :kind
  end
end
