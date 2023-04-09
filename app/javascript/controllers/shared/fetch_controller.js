import { Controller } from "@hotwired/stimulus"

// data-auto=true -> auto load data from server
// data-auto=false -> click to load. default is false
// data-url
export default class extends Controller {
  initialize() {
    this.onClick = this.onClick.bind(this);
  }

  disconnect() {
    this.element.removeEventListener('click', this.onClick, true);
  }

  connect() {
    if (this.element.dataset.auto === 'true') {
      this.loadData();
    } else {
      this.element.addEventListener('click', this.onClick, true);
    }
  }

  onClick(e) {
    e.preventDefault();
    this.loadData();
  }

  loadData() {
    turboFetch(this.element.dataset.url);
  }
}
