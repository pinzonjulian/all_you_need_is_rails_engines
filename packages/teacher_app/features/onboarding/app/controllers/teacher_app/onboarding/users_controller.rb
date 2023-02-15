module TeacherApp
  module Onboarding
    class UsersController < ApplicationController
      def new
        render plain: "teacher app onboarding users#new!"
      end

      def create

      end
    end
  end
end