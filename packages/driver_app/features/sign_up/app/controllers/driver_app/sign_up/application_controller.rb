module DriverApp
  module SignUp
    class ApplicationController < DriverApp::ApplicationController
      # skip before action because sign up is not an authenticated flow
    end
  end
end