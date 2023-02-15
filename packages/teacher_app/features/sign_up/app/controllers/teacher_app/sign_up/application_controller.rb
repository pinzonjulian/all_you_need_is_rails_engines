module TeacherApp
  module SignUp
    class ApplicationController < TeacherApp::ApplicationController
      # skip before action because sign up is not an authenticated flow
    end
  end
end