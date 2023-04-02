# frozen_string_literal: true

module Shared
  class ModalComponent < ApplicationComponent
    renders_one :header
    renders_one :footer

    def initialize(title:, event_detail: {}, size: 'modal-md')
      @title = title
      @event_detail = event_detail
      @size = size
    end

    attr_reader :title, :event_detail, :size
  end
end
