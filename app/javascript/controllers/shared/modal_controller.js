import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['header', 'body', 'footer']
  autoDisappear = true;

  connect() {
    triggerEvent(document, 'onModalOpen', this.eventDetail);
    addClass(document.body, 'overflow-hidden');
    this.autoDisappear = JSON.parse(this.element.dataset.autoDisappear)
  }

  onClose(e) {
    e.preventDefault();
    triggerEvent(document, 'onModalClose', this.eventDetail);
    this.disappear();
  }

  onSubmit(e) {
    e.preventDefault();
    triggerEvent(document, 'onModalSubmit', this.eventDetail);
    this.disappear();
  }

  disappear() {
    removeClass(document.body, 'overflow-hidden');
    hide(this.modal);
    this.modal.innerHTML = '';
  }

  disconnect() {
    if(this.autoDisappear) this.disappear();
  }

  get modal() {
    return document.querySelector('#modal');
  }

  get eventDetail() {
    const data = this.element.dataset.eventDetail;
    return data ? JSON.parse(data) : {}
  }
}
