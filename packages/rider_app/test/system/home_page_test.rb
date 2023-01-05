require_relative "../application_system_test_case"

class HomePageTest < ApplicationSystemTestCase
  test "visiting the home" do
    visit rider_app.root_url
    assert_selector "h1", text: "Hello from Rider App home with locale"
  end
end