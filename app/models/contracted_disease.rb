class ContractedDisease < ActiveRecord::Base
    belongs_to(:chart)
    belongs_to(:disease)
end
