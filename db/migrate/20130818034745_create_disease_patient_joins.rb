class CreateDiseasePatientJoins < ActiveRecord::Migration
  def change
    create_table :disease_patient_joins do |t|
      t.integer :patient_id
      t.integer :disease_id

      t.timestamps
    end
  end
end
