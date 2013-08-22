class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
