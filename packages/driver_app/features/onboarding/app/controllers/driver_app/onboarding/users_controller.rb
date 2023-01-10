module DriverApp
  module Onboarding
    class UsersController < ApplicationController
      def new
        render plain: "driver app onboarding users#new!"
      end

      def create

      end
    end
  end
end