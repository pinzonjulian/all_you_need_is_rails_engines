require_relative "../application_system_test_case"

class HomePageTest < ApplicationSystemTestCase
  test "visiting the home" do
    visit student_app.root_url
    assert_selector "h1", text: "Hello from Student App home with locale"
  end
end