class CreateRiderAppRider < ActiveRecord::Migration[7.0]
  def change
    create_table :rider_app_riders do |t|

      t.timestamps
    end
  end
end
