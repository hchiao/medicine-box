class AddParentRuleToRules < ActiveRecord::Migration
  def change
    add_column :rules, :parent_rule_id, :integer
  end
end
