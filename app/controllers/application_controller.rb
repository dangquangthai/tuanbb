# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :initialize_component_context
  after_action :deny_x_frame_options_header

  def initialize_component_context
    return unless user_signed_in?

    Current.current_user   = current_user
  end

  def deny_x_frame_options_header
    response.set_header 'X-Frame-Options', 'DENY'
  end

  def render_in_turbo_stream(success, message = nil, fail_status: :unprocessable_entity)
    if success
      flash[:notice] = message if message.present?
      no_layout
    else
      no_layout status: fail_status
    end
  end
end
