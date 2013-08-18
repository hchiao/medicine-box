class Doctor < ActiveRecord::Base
    has_many(:doctor_patient_joins)
    has_many(:patients, :through => :doctor_patient_joins)
end
