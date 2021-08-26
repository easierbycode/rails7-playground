Rails.application.config.importmap.draw do
  pin "trix"
  pin "@rails/actiontext", to: "actiontext.js"

  pin '@hotwired/turbo-rails', to: 'turbo.js'
  pin '@hotwired/stimulus', to: 'stimulus.js'
  pin '@hotwired/stimulus-importmap-autoloader', to: 'stimulus-importmap-autoloader.js'
  pin_all_from 'app/javascript/controllers', under: 'controllers'
  
  pin_all_from "app/javascript/components", under: "components"

  pin "application"
  pin "rich_text"

  # Use libraries available via the asset pipeline (locally or via gems).
  # pin "@rails/actioncable", to: "actioncable.esm.js"
  # pin "@rails/activestorage", to: "activestorage.esm.js"

  # Use libraries directly from JavaScript CDNs (see https://www.skypack.dev, https://esm.sh, https://www.jsdelivr.com/esm)
  pin 'md5', to: 'https://cdn.skypack.dev/md5'
  pin "vue", to: "https://cdn.jsdelivr.net/npm/vue@2.6.14/dist/vue.esm.browser.js"
  pin "d3", to: "https://esm.sh/d3?bundle"
  pin 'react', to: 'https://cdn.skypack.dev/react/mode=imports'
  pin 'react-dom', to: 'https://cdn.skypack.dev/react-dom/mode=imports'

  # Pin vendored modules by first adding the following to app/assets/config/manifest.js:
  # //= link_tree ../../../vendor/assets/javascripts .js
  # pin_all_from "vendor/assets/javascripts"
end
