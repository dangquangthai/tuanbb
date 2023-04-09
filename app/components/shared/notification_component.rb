# frozen_string_literal: true

module Shared
  class NotificationComponent < ApplicationComponent
    def initialize(flash:)
      @flash = flash
    end

    attr_reader :flash

    def icon(type, css_class)
      case type
      when 'error'
        material_icon 'error', class: css_class
      when 'alert'
        material_icon 'error', class: css_class
      else
        material_icon 'done', class: css_class
      end
    end

    def css_class(type)
      class_names('pointer-events-auto w-full',
                  'bg-green-500' => type == 'notice',
                  'bg-red-500' => type == 'error',
                  'bg-yellow-500' => type == 'alert')
    end
  end
end
