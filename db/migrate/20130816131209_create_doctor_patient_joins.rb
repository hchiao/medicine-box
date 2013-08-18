class CreateDoctorPatientJoins < ActiveRecord::Migration
  def change
    create_table :doctor_patient_joins do |t|
      t.integer :patient_id
      t.integer :doctor_id

      t.timestamps
    end
  end
end
