class Answer < ActiveRecord::Base
    belongs_to :client_survey
    belongs_to :rule
end
