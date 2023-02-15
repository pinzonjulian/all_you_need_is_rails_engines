module TeacherApp
  module SignUp
    class Engine < Rails::Engine
      isolate_namespace TeacherApp::SignUp
    end
  end
end