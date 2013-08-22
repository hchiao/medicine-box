class DiseaseIdToTreatment < ActiveRecord::Migration
  def change
      add_column(:treatments, :disease_id, :integer)
  end
end
