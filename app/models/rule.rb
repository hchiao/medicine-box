class Rule < ActiveRecord::Base
    belongs_to :survey
    has_one :answer


    belongs_to :parent_rule, class_name: "Rule", foreign_key: "parent_rule_id"
    has_many :child_rules, class_name: "Rule", foreign_key: "parent_rule_id"

    accepts_nested_attributes_for :child_rules
end
