module DriverApp
  class ApplicationController < ActionController::Base
    before_action :authenticate

    private

    def authenticate
      puts "*************************"
      puts "Authentication Performed"
      puts "*************************\n\n"
    end
  end
end