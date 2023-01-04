RiderApp::Engine.routes.draw do
  root to: "home#home"
  resources :ride_requests, only: %w[new]
end
