class CreateCharts < ActiveRecord::Migration
  def change
    create_table :charts do |t|
      t.integer :patient_id
      t.integer :age
      t.float :height
      t.boolean :diabetic
      t.integer :blood_pressure

      t.timestamps
    end
  end
end
