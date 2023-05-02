Trix.config.toolbar.getDefaultHTML = function() {
  const { lang } = Trix.config
  return `<div class="trix-button-row">
    <span class="trix-button-group trix-button-group--text-tools" data-trix-button-group="text-tools">
      <button class="trix-button btn" type="button" data-trix-attribute="heading1" title="${lang.heading1}" tabindex="-1">
        <span class="material-icons material-symbols-rounded">
          title
        </span>
      </button>
      <button class="trix-button btn" type="button" data-trix-attribute="bold" data-trix-key="b" title="${lang.bold}" tabindex="-1">
        <span class="material-icons material-symbols-rounded">
          format_bold
        </span>
      </button>
      <button class="trix-button btn" type="button" data-trix-attribute="italic" data-trix-key="i" title="${lang.italic}" tabindex="-1">
        <span class="material-icons material-symbols-rounded">
          format_italic
        </span>
      </button>
      <button class="trix-button btn" type="button" data-trix-attribute="strike" title="${lang.strike}" tabindex="-1">
        <span class="material-icons material-symbols-rounded">
          format_strikethrough
        </span>
      </button>
      <button class="trix-button btn" type="button" data-trix-attribute="href" data-trix-action="link" data-trix-key="k" title="${lang.link}" tabindex="-1">
        <span class="material-icons material-symbols-rounded">
          link
        </span>
      </button>
      <button class="trix-button btn" type="button" data-trix-action="attachFiles" title="${lang.attachFiles}" tabindex="-1">
        <span class="material-icons material-symbols-rounded">
          add_photo_alternate
        </span>
      </button>
      
      <input type="color" style="width:0;height:0;padding:0;margin-top:20px;visibility:hidden"
             data-trix-target="foregroundColorPicker" data-action="trix#foregroundColorChanged">
      <button class="trix-button btn" type="button" class="trix-button btn" data-action="click->trix#openForegroundColorPicker" title="Text color">
        <span class="material-icons material-symbols-rounded">
          palette
        </span>
      </button>

      <button class="trix-button btn" type="button" data-trix-attribute="textAlignCenter">
        <span class="material-icons material-symbols-rounded">
          format_align_center
        </span>
      </button>
    </span>
    <span class="trix-button-group trix-button-group--history-tools" data-trix-button-group="history-tools">
      <button class="trix-button btn" type="button" data-trix-action="undo" data-trix-key="z" title="${lang.undo}" tabindex="-1">
        <span class="material-icons material-symbols-rounded">
          undo
        </span>
      </button>
      <button class="trix-button btn" type="button" data-trix-action="redo" data-trix-key="shift+z" title="${lang.redo}" tabindex="-1">
        <span class="material-icons material-symbols-rounded">
          redo
        </span>
      </button>
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
