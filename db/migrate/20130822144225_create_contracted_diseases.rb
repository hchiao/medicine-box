class CreateContractedDiseases < ActiveRecord::Migration
  def change
    create_table :contracted_diseases do |t|
      t.integer :chart_id
      t.integer :disease_id

      t.timestamps
    end
  end
end
