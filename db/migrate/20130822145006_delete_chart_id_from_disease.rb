class DeleteChartIdFromDisease < ActiveRecord::Migration
  def change
      remove_column(:diseases, :chart_id)
  end
end
