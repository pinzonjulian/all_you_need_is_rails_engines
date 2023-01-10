module MarketingSite
  class HomeController < ApplicationController
    def home
      render plain: "Marketing site home!"
    end
  end
end