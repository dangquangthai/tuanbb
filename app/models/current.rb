# frozen_string_literal: true

class Current < ActiveSupport::CurrentAttributes
  attribute :current_user, :current_tenant
end
