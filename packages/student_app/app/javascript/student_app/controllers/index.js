// Note how paths are prefixed with "student_app/controllers"
// This works in conjunction with the importmap configuration for the engine.

// Import and register all your controllers from the importmap under controllers/*

import { application } from "student_app/controllers/application"

// Eager load all controllers defined in the import map under controllers/**/*_controller
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"


eagerLoadControllersFrom("student_app/controllers", application)

// Lazy load controllers as they appear in the DOM (remember not to preload controllers in import map!)
// import { lazyLoadControllersFrom } from "@hotwired/stimulus-loading"
// lazyLoadControllersFrom("controllers", application)
