class CreateStudentAppRideRequest < ActiveRecord::Migration[7.0]
  def change
    create_table :student_app_ride_requests do |t|
      t.references :rider, null: false, foreign_key: {  to_table: :student_app_riders }

      t.timestamps
    end
  end
end
