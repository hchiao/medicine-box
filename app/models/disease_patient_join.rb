class DiseasePatientJoin < ActiveRecord::Base
    belongs_to(:disease)
    belongs_to(:patient)
end
