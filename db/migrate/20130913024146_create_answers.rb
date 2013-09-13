class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :client_survey_id
      t.integer :rule_id
      t.boolean :pick

      t.timestamps
    end
  end
end
