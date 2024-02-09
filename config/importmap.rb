# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
# Specify the TinyMCE package
pin "tinymce", to: "tinymce/tinymce.min.js"
pin "trix"
pin "@rails/actiontext", to: "actiontext.esm.js"
