Trix.config.toolbar.getDefaultHTML = function() {
  const { lang } = Trix.config
  return `<div class="trix-button-row">
    <span class="trix-button-group trix-button-group--text-tools" data-trix-button-group="text-tools">
      <button type="button" data-trix-attribute="bold" data-trix-key="b" title="${lang.bold}" tabindex="-1">${lang.bold}</button>
      <button type="button" data-trix-attribute="italic" data-trix-key="i" title="${lang.italic}" tabindex="-1">${lang.italic}</button>
      <button type="button" data-trix-attribute="strike" title="${lang.strike}" tabindex="-1">${lang.strike}</button>
      <button type="button" data-trix-attribute="href" data-trix-action="link" data-trix-key="k" title="${lang.link}" tabindex="-1">${lang.link}</button>
      <button type="button" data-trix-action="attachFiles" title="${lang.attachFiles}" tabindex="-1">${lang.attachFiles}</button>
      
      <input type="color" style="width:0;height:0;padding:0;margin-top:20px;visibility:hidden"
             data-trix-target="foregroundColorPicker" data-action="trix#foregroundColorChanged">
      <button type="button" class="trix-button" data-action="click->trix#openForegroundColorPicker" title="Text color">
        <span class="icon"><i class="fas fa-palette fa-lg"></i></span>
      </button>

      <button type="button" class="trix-button" data-trix-attribute="textAlignCenter">
        <span class="icon"><i class="fas fa-align-center fa-lg"></i></span>
      </button>
    </span>
    <span class="trix-button-group trix-button-group--history-tools" data-trix-button-group="history-tools">
      <button type="button" class="trix-button trix-button--icon trix-button--icon-undo" data-trix-action="undo" data-trix-key="z" title="${lang.undo}" tabindex="-1">${lang.undo}</button>
      <button type="button" class="trix-button trix-button--icon trix-button--icon-redo" data-trix-action="redo" data-trix-key="shift+z" title="${lang.redo}" tabindex="-1">${lang.redo}</button>
    </span>
  </div>
  <div class="trix-dialogs" data-trix-dialogs>
    <div class="trix-dialog trix-dialog--link" data-trix-dialog="href" data-trix-dialog-attribute="href">
      <div class="trix-dialog__link-fields">
        <input type="url" name="href" class="trix-input trix-input--dialog" placeholder="${lang.urlPlaceholder}" aria-label="${lang.url}" required data-trix-input>
        <div class="trix-button-group">
          <input type="button" class="trix-button trix-button--dialog" value="${lang.link}" data-trix-method="setAttribute">
          <input type="button" class="trix-button trix-button--dialog" value="${lang.unlink}" data-trix-method="removeAttribute">
        </div>
      </div>
    </div>
  </div>`;
};

Trix.config.textAttributes.foregroundColor = {
  styleProperty: 'color',
  inheritable: true
}

Trix.config.textAttributes.backgroundColor = {
  styleProperty: 'backgroundColor',
  inheritable: true
}

Trix.config.blockAttributes.textAlignCenter = {
  tagName: 'centered-div'
}
