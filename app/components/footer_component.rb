# frozen_string_literal: true

class FooterComponent < ApplicationComponent
  def initialize
    @footer = Article.find_by(slug: 'footer')
  end

  attr_reader :footer

  def present?
    footer.present? || footer.content.body.present?
  end
end
