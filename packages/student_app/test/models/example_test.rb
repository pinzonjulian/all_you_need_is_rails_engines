require "test_helper"

class ExampleTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
    # Normally, you do not prepend factory methods with `FactoryBot`.
    # This is provided by the helpers included in the ActiveSupport::TestCase
    # before -> rider_factory = FactoryBot.build(:student_app_rider)
    # after  -> rider_factory = build(:student_app_rider)
    #
    # https://github.com/thoughtbot/factory_bot/blob/main/GETTING_STARTED.md#configure-your-test-suite

    rider_factory = build(:student_app_rider)
    assert rider_factory.is_a?(StudentApp::Rider)
    ride_request_factory = build(:student_app_ride_request)
    assert ride_request_factory.is_a?(StudentApp::RideRequest)
    assert ride_request_factory.rider.is_a?(StudentApp::Rider)
  end
end
