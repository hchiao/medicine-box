class AddChartIdToDisease < ActiveRecord::Migration
  def change
      add_column(:diseases, :chart_id, :integer)
  end
end
