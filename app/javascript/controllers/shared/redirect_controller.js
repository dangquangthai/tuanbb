import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    window.location = this.element.dataset.url;
  }
}
