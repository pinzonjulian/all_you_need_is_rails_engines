module TeacherApp
  module SignUp
    class StartController < ApplicationController
      def get_started
        render plain: "TeacherApp/SignUp Start Controller. sign up starts here"
      end
    end
  end
end