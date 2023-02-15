FactoryBot.define do
  factory :student_app_ride_request, class: StudentApp::RideRequest do
    # when using explicit factory definition (i.e defining the specific class to use)
    # it becomes necessary to tell which factory to use for associations.
    #
    # In the following example, the association is `rider` as set in the model and
    # factory bot will try to find a `rider` factory for a `Rider` class. Because
    # the setup is custom, we need to be explicit about which factory the `rider` association
    # needs to use; in this case, the `student_app_rider` factory.
    # https://github.com/thoughtbot/factory_bot/blob/main/GETTING_STARTED.md#specifying-the-factory
    rider factory: :student_app_rider
  end
end