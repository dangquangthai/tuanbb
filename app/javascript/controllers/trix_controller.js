import { Controller } from '@hotwired/stimulus'
import Trix from 'trix'

// Connects to data-controller="trix"
// https://github.com/basecamp/trix/issues/985
export default class extends Controller {
  static targets = ['editor', 'foregroundColorPicker', 'backgroundColorPicker']

  connect() {
    addClass(document.querySelector('#trix-toolbar-1'), 'sticky top-[-20px] bg-white');
  }

  openForegroundColorPicker () {
    this.foregroundColorPickerTarget.click();
  }

  openBackgroundColorPicker () {
    this.backgroundColorPickerTarget.click();
  }

  foregroundColorChanged () {
    this.editorTarget.editor.activateAttribute('foregroundColor', this.foregroundColorPickerTarget.value);
  }

  backgroundColorChanged () {
    this.editorTarget.editor.activateAttribute('backgroundColor', this.backgroundColorPickerTarget.value);
  }
}
