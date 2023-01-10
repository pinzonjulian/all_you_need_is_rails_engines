module DriverApp
  module SignUp
    class StartController < ApplicationController
      def get_started
        render plain: "DriverApp/SignUp Start Controller. sign up starts here"
      end
    end
  end
end