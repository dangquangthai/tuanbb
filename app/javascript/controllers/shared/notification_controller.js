import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    setTimeout(() => { this.close(); }, 10 * 1000);
  }

  onClose(e) {
    e.preventDefault();
    this.close();
  }

  close() {
    this.element.remove();
  }
}
