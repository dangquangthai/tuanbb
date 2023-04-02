# frozen_string_literal: true

module Shared
  class InputComponent < ApplicationComponent
    def initialize(attribute_name: nil, **options)
      @attribute_name = attribute_name.present? ? attribute_name.to_sym : ''
      @options = options.presence || {}
      read_options
    end

    attr_reader :form,
                :resource,
                :attribute_name,
                :options,
                :type, # date, email, tel, password, textarea, radio, checkbox, number, time
                :future_date, # if type=date
                :required, # doesn't work when type=radio, checkbox
                :label,
                :without_label, :only_label,
                :disabled, :checked,
                :readonly,
                :css_class, :label_css_class, :wrapper_css_class,
                :data, :wrapper_data, # { action: 'hello', controller: 'world' } => data-action="hello" data-controller="world"
                :placeholder, :caption,
                :value,
                :collection, # if present type will be select
                :query_selector,
                :html_attributes,
                :size

    def read_options # rubocop:disable Metrics/AbcSize
      @form = options.fetch(:form, nil)
      @resource = @form.object if @form.present?
      @label = options.fetch(:label, nil)
      @type = options.fetch(:type, nil)&.to_sym
      @future_date = options.fetch(:future_date, false)
      @without_label = options.fetch(:without_label, false)
      @only_label = options.fetch(:only_label, false)
      @required = options.fetch(:required, type == :password)
      @disabled = options.fetch(:disabled, false)
      @checked = options.fetch(:checked, false)
      @readonly = options.fetch(:readonly, false)
      @css_class = options.fetch(:css_class, nil)
      @value = options.fetch(:value, nil)
      @collection = options.fetch(:collection, [])
      @label_css_class = options.fetch(:label_css_class, nil)
      @wrapper_css_class = options.fetch(:wrapper_css_class, nil)
      @placeholder = options.fetch(:placeholder, placeholder_default_value)
      @caption = options.fetch(:caption, nil)
      @data = options.fetch(:data, nil)
      @size = options.fetch(:size, nil)
      @wrapper_data = options.fetch(:wrapper_data, nil)
      @html_attributes = options.fetch(:html_attributes, nil)
      @query_selector = options.fetch(:query_selector, "#{type}#{rand(Time.current.to_i)}")
    end

    def radio?
      type == :radio
    end

    def checkbox?
      type == :checkbox
    end

    def select?
      type == :select && collection.present?
    end

    def action_text?
      type == :action_text
    end

    def invalid?
      return false if resource.blank?
      return false if resource.is_a?(String)

      resource.errors.messages[attribute_name].present?
    end

    def error_messages
      return if resource.blank?
      return if resource.is_a?(String)

      resource.errors.messages_for(attribute_name).uniq.to_sentence
    end

    def invalid_css_classes
      class_names('txt-invalid',
                  'txt-invalid-disabled' => disabled,
                  css_class.to_s => css_class.present?,
                  'rounded-md' => !(radio? || checkbox?),
                  'rounded-full' => radio?,
                  'rounded' => checkbox?)
    end

    def valid_css_classes
      class_names('txt-valid',
                  'txt-valid-disabled' => disabled,
                  css_class.to_s => css_class.present?,
                  'rounded-md' => !(radio? || checkbox?),
                  'rounded-full' => radio?,
                  'rounded' => checkbox?)
    end

    def render_label
      return send("render_#{type}_label") if respond_to?("render_#{type}_label")

      if form.present?
        form.label attribute_name, label, class: "mr-2 #{label_css_class}"
      else
        new_label = label.presence || attribute_name.to_s.humanize
        label_tag attribute_name, new_label, class: "mr-2 #{label_css_class}"
      end
    end

    def render_input(**params)
      params.merge!(value: value).compact! unless radio? || checkbox?

      return text_input(**params) if collection.blank? && type.blank?

      return select_input(**params) if select?

      send("#{type}_input", **params)
    end

    def select_input(**params)
      params.delete(:placeholder)

      if form.present?
        form.select attribute_name, collection, { prompt: placeholder }, **params
      else
        params[:prompt] = placeholder if value.blank?
        select_tag attribute_name, options_for_select(collection, value), **params
      end
    end

    def text_input(**params)
      if form.present?
        form.text_field attribute_name, **params
      else
        text_field resource, attribute_name, **params
      end
    end

    def email_input(**params)
      if form.present?
        form.email_field attribute_name, **params
      else
        email_field resource, attribute_name, **params
      end
    end

    def date_input(**params)
      params[:max] = to_yyyy_mm_ss(Time.current) unless future_date

      if form.present?
        form.date_field attribute_name, **params
      else
        date_field resource, attribute_name, **params
      end
    end

    def time_input(**params)
      if form.present?
        form.time_field attribute_name, **params
      else
        time_field resource, attribute_name, **params
      end
    end

    def tel_input(**params)
      if form.present?
        form.telephone_field attribute_name, **params
      else
        telephone_field resource, attribute_name, **params
      end
    end

    def number_input(**params)
      params[:step] = :any

      if form.present?
        form.number_field attribute_name, **params
      else
        number_field resource, attribute_name, **params
      end
    end

    def password_input(**params)
      if form.present?
        form.password_field attribute_name, **params.merge(required: true)
      else
        password_field resource, attribute_name, **params.merge(required: true)
      end
    end

    def textarea_input(**params)
      if params[:data].present?
        params[:data][:controller] = 'shared--textarea'
      else
        params[:data] = { controller: 'shared--textarea' }
      end

      if form.present?
        form.text_area attribute_name, **params
      else
        text_area resource, attribute_name, **params
      end
    end

    def action_text_input(**params)
      if form.present?
        form.rich_text_area attribute_name, **params
      else
        rich_text_area resource, attribute_name, **params
      end
    end

    def placeholder_default_value
      radio? || checkbox? ? nil : attribute_name.to_s.humanize
    end

    def radio_input(**params)
      params.merge!(id: query_selector).compact!

      if form.present?
        form.radio_button attribute_name, value, **params.except(:checked)
      else
        radio_button_tag attribute_name, value, checked, **params
      end
    end

    def render_radio_label
      if form.present?
        form.label attribute_name, radio_or_checkbox_label, class: label_css_class, for: query_selector
      else
        label_tag "#{attribute_name}_#{value}", radio_or_checkbox_label, class: label_css_class, for: query_selector
      end
    end

    def checkbox_input(**params)
      params.merge!(id: query_selector).compact!

      if form.present?
        form.check_box attribute_name, **params.except(:checked)
      else
        check_box_tag attribute_name, value, checked, **params
      end
    end

    def render_checkbox_label
      if form.present?
        form.label attribute_name, radio_or_checkbox_label, class: label_css_class, for: query_selector
      else
        label_tag attribute_name, radio_or_checkbox_label, class: label_css_class, for: query_selector
      end
    end

    def radio_or_checkbox_label
      label.presence || value&.humanize
    end

    def wrapper_data_html_attribute
      wrapper_data.map do |key, html_value|
        "data-#{key.to_s.parameterize.dasherize}=#{html_value}"
      end.join(' ')
    end
  end
end
