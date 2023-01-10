module DriverApp
  class HomeController < ApplicationController
    def show
      render plain: "Driver App Home Controller"
    end
  end
end