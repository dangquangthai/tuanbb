import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['header', 'body', 'footer']

  connect() {
    triggerEvent(document, 'onModalOpen', this.eventDetail);
    addClass(document.body, 'overflow-hidden');
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

  get modal() {
    return document.querySelector('#modal');
  }

  get eventDetail() {
    const data = this.element.dataset.eventDetail;
    return data ? JSON.parse(data) : {}
  }
}
