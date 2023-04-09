# frozen_string_literal: true

module Shared
  class ButtonComponent < ApplicationComponent
    def initialize(**options)
      @options = options.presence || {}
      read_options
    end

    protected

    attr_reader :hierarchy,
                :text,
                :type, :form_target, :submit_value, :form_url, # formaction
                :size,
                :leading_icon,
                :trailing_icon,
                :disabled,
                :href,
                :css_class,
                :query_selector,
                :data,
                :html_attributes,
                :leading_icon_css_class,
                :trailing_icon_css_class,
                :options,
                :turbo_method

    def read_options # rubocop:disable Metrics/AbcSize
      @disabled = options.fetch(:disabled, false)
      @hierarchy = @disabled ? :secondary : options.fetch(:hierarchy, 'primary')&.to_sym
      @text = options.fetch(:text, nil)
      @type = options.fetch(:type, nil)&.to_sym
      @form_target = options.fetch(:form_target, nil) # if type=submit
      @submit_value = options.fetch(:submit_value, nil) # if type=submit
      @form_url = options.fetch(:form_url, nil) # if type=submit
      @size = options.fetch(:size, 'md')&.to_sym
      @leading_icon = options.fetch(:leading_icon, nil)
      @trailing_icon = options.fetch(:trailing_icon, nil)
      @href = options.fetch(:href, nil)
      @turbo_method = options.fetch(:turbo_method, nil)
      @query_selector = options.fetch(:query_selector, nil)
      @css_class = options.fetch(:css_class, nil)
      @html_attributes = options.fetch(:html_attributes, nil)
      @leading_icon_css_class = options.fetch(:leading_icon_css_class, nil)
      @trailing_icon_css_class = options.fetch(:trailing_icon_css_class, nil)
      @data = options.fetch(:data, nil) # { action: 'hello', controller: 'world' } => data-action="hello" data-controller="world"
    end

    def defaullt_css_class
      class_names("btn-#{hierarchy} btn-#{size}",
                  css_class.to_s => css_class.present?,
                  'pointer-events-none' => disabled)
    end

    def primary?
      hierarchy == :primary
    end

    def secondary?
      hierarchy == :secondary
    end

    def danger?
      hierarchy == :danger
    end

    def icon_css_class(margin_css)
      class_names(margin_css => text.present?,
                  'text-white' => primary? || danger?,
                  'text-primary' => secondary?,
                  **icon_size_classes)
    end

    def data_html_attributes
      { data: data }
    end
  end
end
