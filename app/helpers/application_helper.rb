# frozen_string_literal: true

module ApplicationHelper
  def hide_modal
    turbo_stream.update(:modal) { '' }
  end

  def show_modal(title: nil, event_detail: {}, size: 'modal-md')
    turbo_stream.replace :modal do
      content_tag :div, id: 'modal' do
        render Shared::ModalComponent.new(title: title, event_detail: event_detail, size: size) do |modal|
          modal.with_header { content_for(:modal_header) } if content_for?(:modal_header)
          yield
          modal.with_footer { content_for(:modal_footer) } if content_for?(:modal_footer)
        end
      end
    end
  end

  def submit_button
    render Shared::ButtonComponent.new(text: 'OK', type: 'submit')
  end

  def close_modal_button
    render Shared::ButtonComponent.new(
      hierarchy: :secondary,
      text: 'Cancel',
      type: :button,
      data: { action: 'click->shared--modal#onClose' }
    )
  end
end
