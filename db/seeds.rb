# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Doctor.delete_all
john    = Doctor.create(name: "John Smith")
william = Doctor.create(name: "William Baker")
steven  = Doctor.create(name: "Steven Taylor")

Patient.delete_all
george = Patient.create(name: "George Doe")
kate   = Patient.create(name: "Kate Stevens")
jenny  = Patient.create(name: "Jenny Lin")

DoctorPatientJoin.delete_all
# Very dodgy as it's using first, what happens if it's empty or has more than one?
DoctorPatientJoin.create([{doctor_id: john.id, patient_id: george.id},
                          {doctor_id: john.id, patient_id: kate.id},
                          {doctor_id: john.id, patient_id: jenny.id},
                          {doctor_id: steven.id, patient_id: jenny.id}])

Disease.delete_all
ckd        = Disease.create(name: "Chromic Kidney Disease")
diabetes   = Disease.create(name: "Diabetes")

DiseasePatientJoin.delete_all
# Very dodgy as it's using first, what happens if it's empty or has more than one?
DiseasePatientJoin.create([{disease_id: ckd.id, patient_id: george.id},
                           {disease_id: diabetes.id, patient_id: kate.id},
                           {disease_id: ckd.id, patient_id: jenny.id},
                           {disease_id: diabetes.id, patient_id: jenny.id}])

Treatment.delete_all
# Need to redesign treatment (make sure what is needed)
Treatment.create([{disease_id: ckd.id, name: "ckd", description:"Time - q12mo, Urine ACR, UEC, eGFR, Fasting lipids"},
                  {disease_id: diabetes.id, name: "diabetes", description:"Time - q6mo,HbA1C"}])

Chart.delete_all
Chart.create([{patient_id: george.id, age: "25", height: "185", diabetic: "FALSE", 
               blood_pressure_systolic: "120", blood_pressure_diastolic: "75"}])
Chart.create([{patient_id: kate.id, age: "54", height: "185", diabetic: "FALSE", 
               blood_pressure_systolic: "120", blood_pressure_diastolic: "75"}])
Chart.create([{patient_id: jenny.id, age: "14", height: "185", diabetic: "FALSE", 
               blood_pressure_systolic: "120", blood_pressure_diastolic: "75"}])
