
pin "student_app/application", preload: true

pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true

pin_all_from File.expand_path("../app/javascript/student_app/controllers", __dir__), under: "student_app/controllers"


