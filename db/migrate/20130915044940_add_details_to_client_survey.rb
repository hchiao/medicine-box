class AddDetailsToClientSurvey < ActiveRecord::Migration
  def change
    add_column :client_surveys, :survey_id, :integer
    add_column :client_surveys, :recommendations, :text
  end
end
