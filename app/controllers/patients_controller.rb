class PatientsController < ApplicationController
    def show
        @my_doctors = Doctor.find(:all)
        @my_patients = Patient.find(:all)
        @my_doctor_patient_joins = DoctorPatientJoin.find(:all)
        @my_diseases = Disease.find(:all)
        @my_disease_patient_joins = DiseasePatientJoin.find(:all)
    end
end
