# frozen_string_literal: true

class ApplicationComponent < ViewComponent::Base
  include ApplicationHelper
  include Turbo::StreamsHelper
  include Turbo::FramesHelper

  delegate :rich_text_area_tag, to: :helpers

  def xs?
    size == :xs
  end

  def sm?
    size == :sm
  end

  def md?
    size == :md
  end

  def lg?
    size == :lg
  end

  def xl?
    size == :xl
  end

  def icon_size_classes
    {
      'w-5 h-5' => lg? || md?,
      'w-6 h-6' => xl?,
      'w-4 h-4' => sm?,
      'w-3 h-3' => xs?
    }
  end
end
