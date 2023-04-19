# frozen_string_literal: true

class Home::TrendsComponent < ApplicationComponent
  def initialize(trends:)
    @trends = trends
  end

  attr_reader :trends

  def render?
    trends.present? 
  end
end
