class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.text :condition
      t.text :action

      t.timestamps
    end
  end
end
