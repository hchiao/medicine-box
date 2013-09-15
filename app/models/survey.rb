class Survey < ActiveRecord::Base
    has_many :rules
    has_many :client_surveys
    accepts_nested_attributes_for :rules
end
