# frozen_string_literal: true

module Admin
  class FeaturedsComponent < ApplicationComponent
    def initialize(featureds:, kind:)
      @featureds = featureds
      @kind = kind
    end

    attr_reader :featureds, :kind
  end
end
