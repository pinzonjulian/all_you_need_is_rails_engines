class CreateRiderAppRideRequest < ActiveRecord::Migration[7.0]
  def change
    create_table :rider_app_ride_requests do |t|
      t.references :rider, null: false, foreign_key: {  to_table: :rider_app_riders }

      t.timestamps
    end
  end
end
