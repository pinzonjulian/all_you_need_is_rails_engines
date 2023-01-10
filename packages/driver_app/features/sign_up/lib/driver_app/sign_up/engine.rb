module DriverApp
  module SignUp
    class Engine < Rails::Engine
      isolate_namespace DriverApp::SignUp
    end
  end
end