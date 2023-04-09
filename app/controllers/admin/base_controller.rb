# frozen_string_literal: true

module Admin
  class BaseController < ApplicationController
    layout 'admin'
    before_action :authenticate_user!
    before_action :initialize_component_context

    def initialize_component_context
      return unless user_signed_in?

      Current.current_user = current_user
    end
  end
end
