# frozen_string_literal: true

module Admin
  class FeaturedsComponent < ViewComponent::Base
    def initialize(featureds:)
      @featureds = featureds
    end

    attr_reader :featureds
  end
end
