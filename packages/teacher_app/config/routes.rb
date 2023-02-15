TeacherApp::Engine.routes.draw do
  root to: "home#show"
  mount TeacherApp::Onboarding::Engine, at: "/onboarding"
  mount TeacherApp::SignUp::Engine, at: "/sign_up"
end