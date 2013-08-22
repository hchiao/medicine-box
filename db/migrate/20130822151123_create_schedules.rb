class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :patient_id
      t.text :description
      t.datetime :time

      t.timestamps
    end
  end
end
