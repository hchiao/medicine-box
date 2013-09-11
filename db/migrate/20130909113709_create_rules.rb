class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.integer :survey_id
      t.text :condition
      t.text :true
      t.text :false

      t.timestamps
    end
  end
end
