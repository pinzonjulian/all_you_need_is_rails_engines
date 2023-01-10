Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  constraints subdomain: "rider" do
    mount RiderApp::Engine, at: "/"
  end

  constraints subdomain: "driver" do
    mount DriverApp::Engine, at: "/"
  end

  mount MarketingSite::Engine, at: "/"
end
