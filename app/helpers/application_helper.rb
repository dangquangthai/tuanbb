# frozen_string_literal: true

module ApplicationHelper
  def articles_collection
    Article.pluck(:title, :id)
  end

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
    render Shared::ButtonComponent.new(text: 'Lưu', type: 'submit')
  end

  def close_modal_button
    render Shared::ButtonComponent.new(
      hierarchy: :secondary,
      text: 'Cancel',
      type: :button,
      data: { action: 'click->shared--modal#onClose' }
    )
  end

  def material_icon(icons, **options)
    doc = Nokogiri::HTML.fragment("<span>#{icons}</span>")
    span = doc.at_css('span')
    options.each do |attr, value|
      span[attr.to_s] = value
      span[attr.to_s] += ' material-icons material-symbols-outlined' if attr.to_s == 'class'
    end
    doc.to_html
  end

  def redirect_tag(url)
    turbo_stream.update('will-redirect') { content_tag :div, nil, data: { controller: 'shared--redirect', url: url } }
  end

  def show_notification
    turbo_stream.update(:notifications) { render(Shared::NotificationComponent.new(flash: flash)) }
  end
end
