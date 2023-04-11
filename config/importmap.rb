# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin 'application', preload: true
pin '@hotwired/turbo-rails', to: 'turbo.min.js', preload: true
pin '@hotwired/stimulus', to: 'stimulus.min.js', preload: true
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin '@rails/actiontext', to: 'actiontext.js'
pin "helpers", to: 'helpers.js'
pin "trix", to: "https://ga.jspm.io/npm:trix@2.0.4/dist/trix.esm.min.js"
pin 'trix_custom', preload: true
pin_all_from 'app/javascript/controllers', under: 'controllers'