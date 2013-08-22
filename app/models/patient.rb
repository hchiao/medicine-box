class Patient < ActiveRecord::Base
    has_many(:doctor_patient_joins)
    has_many(:doctors, :through => :doctor_patient_joins)

    has_many(:treatments)
    has_many(:schedules)
    has_one(:chart)
end
