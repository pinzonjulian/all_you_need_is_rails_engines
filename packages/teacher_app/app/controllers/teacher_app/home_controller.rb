module TeacherApp
  class HomeController < ApplicationController
    def show
      render plain: "Teacher App Home Controller"
    end
  end
end