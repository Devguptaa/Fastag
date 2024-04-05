# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@babel/runtime/helpers/asyncToGenerator", to: "@babel--runtime--helpers--asyncToGenerator.js" # @7.24.1
pin "@babel/runtime/helpers/defineProperty", to: "@babel--runtime--helpers--defineProperty.js" # @7.24.1
pin "@babel/runtime/helpers/typeof", to: "@babel--runtime--helpers--typeof.js" # @7.24.1
pin "canvg" # @3.0.10
