class RemoveRuleIdFromRules < ActiveRecord::Migration
  def change
    remove_column :rules, :rule_id, :integer
  end
end
