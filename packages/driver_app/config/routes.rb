DriverApp::Engine.routes.draw do
  root to: "home#show"
  mount DriverApp::Onboarding::Engine, at: "/onboarding"
  mount DriverApp::SignUp::Engine, at: "/sign_up"
end