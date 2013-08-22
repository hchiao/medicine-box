class AddingTwoBloodPressure < ActiveRecord::Migration
  def change
      rename_column(:charts, :blood_pressure,:blood_pressure_systolic)
      add_column(:charts, :blood_pressure_diastolic, :integer)
  end
end
