class CreateClientSurveys < ActiveRecord::Migration
  def change
    create_table :client_surveys do |t|

      t.timestamps
    end
  end
end
