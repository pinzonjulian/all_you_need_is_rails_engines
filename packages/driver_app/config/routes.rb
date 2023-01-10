DriverApp::Engine.routes.draw do
  root to: "home#show"
  mount DriverApp::Onboarding::Engine, at: "/onboarding"
end