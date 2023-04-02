window.removeClass = function(element, classes) {
  classes.split(' ').forEach(className => element?.classList.remove(className));
};

window.addClass = function(element, classes) {
  classes.split(' ').forEach(className => element?.classList.add(className));
};

window.toggleClass = function(element, classes) {
  classes.split(' ').forEach(className => element?.classList.toggle(className));
};

window.hasClass = function(element, className) {
  return element.classList.contains(className);
};

window.show = function(element) {
  removeClass(element, 'hidden');
};

window.hide = function(element) {
  addClass(element, 'hidden');
};

window.triggerEvent = function(target, eventName, data) {
  if (typeof data === 'undefined') {
    target.dispatchEvent(new Event(eventName));
  } else {
    const eventData = { bubbles: true, detail: data }
    target.dispatchEvent(new CustomEvent(eventName, eventData));
  }
};

window.turboFetch = function(url) {
  fetch(url, {
    headers: {
      Accept: "text/vnd.turbo-stream.html",
    },
  }).then(r => r.text()).then(html => Turbo.renderStreamMessage(html));
}

window.presence = function(value, defaultValue) {
  const empty = (value === '' || value === null || value === undefined)

  if (empty) { return defaultValue }
  else { return value }
}

window.uuidv4 = function() {
  return ([1e7]+-1e3+-4e3+-8e3+-1e11).replace(/[018]/g, c =>
    (c ^ window.crypto.getRandomValues(new Uint8Array(1))[0] & 15 >> c / 4).toString(16)
  );
}

window.waitForElement = function(selector) {
  return new Promise(resolve => {
    if (document.querySelector(selector)) {
      return resolve(document.querySelector(selector))
    }

    const observer = new MutationObserver(mutations => {
      if (document.querySelector(selector)) {
        resolve(document.querySelector(selector))
        observer.disconnect()
      }
    })

    observer.observe(document.body, {
      childList: true,
      subtree: true
    })
  })
}
