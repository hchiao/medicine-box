class PatientsController < ApplicationController
    def show
        @my_doctors = Doctor.find(:all)
        @my_patients = Patient.find(:all)
        @my_doctor_patient_joins = DoctorPatientJoin.find(:all)
    end
end
