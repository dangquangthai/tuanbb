# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include HasRescue

  skip_before_action :verify_authenticity_token
  after_action :deny_x_frame_options_header

  def render_in_turbo_stream(success, message = nil, fail_status: :unprocessable_entity)
    if success
      flash[:notice] = message if message.present?
      no_layout
    else
      no_layout status: fail_status
    end
  end

  def no_layout(**options)
    render layout: false, **options
  end
end
