# frozen_string_literal: true

module HasRescue
  extend ActiveSupport::Concern

  included do
    def json_response(object, status = :ok)
      render json: object, status: status
    end

    protected

    def deny_x_frame_options_header
      response.set_header 'X-Frame-Options', 'DENY'
    end

    def internal_server_error(execption)
      Rails.logger.error(execption.message)
      json_response({ error: execption.message }, :internal_server_error)
    end

    def bad_request
      json_response({ error: 'Parameter missing' }, :bad_request)
    end

    def not_found
      json_response({ error: 'Resource not found' }, :not_found)
    end

    # rescue_from StandardError,                      with: :internal_server_error
    rescue_from ActionController::ParameterMissing, with: :bad_request
    rescue_from ActiveRecord::RecordNotFound,       with: :not_found
  end
end
