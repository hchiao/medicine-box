class Survey < ActiveRecord::Base
    has_many :rules
    accepts_nested_attributes_for :rules
end
