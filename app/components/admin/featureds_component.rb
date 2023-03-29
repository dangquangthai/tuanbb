# frozen_string_literal: true

class Admin::FeaturedsComponent < ViewComponent::Base
  def initialize(featureds:)
    @featureds = featureds
  end

  attr_reader :featureds
end
