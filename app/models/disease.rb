class Disease < ActiveRecord::Base
    has_one :treatment

    has_many(:disease_patient_joins)
    has_many(:patients, :through => :disease_patient_joins)
end