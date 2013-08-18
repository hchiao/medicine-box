# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Doctor.delete_all
john    = Doctor.create([{name: "John Smith"}])
william = Doctor.create([{name: "William Baker"}])
steven  = Doctor.create([{name: "Steven Taylor"}])

Patient.delete_all
george = Patient.create([{name: "George Doe"}])
kate   = Patient.create([{name: "Kate Stevens"}])
jenny  = Patient.create([{name: "Jenny Lin"}])

DoctorPatientJoin.delete_all
# Very dodgy as it's using first, what happens if it's empty or has more than one?
DoctorPatientJoin.create([{doctor_id: john.first.id, patient_id: george.first.id}])
DoctorPatientJoin.create([{doctor_id: john.first.id, patient_id: kate.first.id}])
DoctorPatientJoin.create([{doctor_id: steven.first.id, patient_id: jenny.first.id}])
