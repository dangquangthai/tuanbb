# frozen_string_literal: true

class Home::AutoShowComponent < ApplicationComponent
  def initialize(featured:)
    @featured = featured
  end

  attr_reader :featured
end
