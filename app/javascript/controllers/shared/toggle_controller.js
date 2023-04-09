import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.onClick = this.onClick.bind(this);
    this.element.addEventListener('click', this.onClick);
  }

  disconnect() {
    this.element.removeEventListener('click', this.onClick);
  }

  onClick(e) {
    e.preventDefault();

    if (this.showTarget) {
      show(this.showTarget);
    }

    if (this.hideTarget) {
      hide(this.hideTarget);
    }
  }

  get showTarget() {
    if (!this.element.dataset.showTarget) {
      return undefined;
    }

    return document.querySelector(this.element.dataset.showTarget)
  }

  get hideTarget() {
    if (!this.element.dataset.hideTarget) {
      return undefined;
    }

    return document.querySelector(this.element.dataset.hideTarget)
  }
}
