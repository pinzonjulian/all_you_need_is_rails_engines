class CreateStudentAppRider < ActiveRecord::Migration[7.0]
  def change
    create_table :student_app_riders do |t|

      t.timestamps
    end
  end
end
