class Patient < ActiveRecord::Base
    has_many(:doctor_patient_joins)
    has_many(:doctors, :through => :doctor_patient_joins)
end
