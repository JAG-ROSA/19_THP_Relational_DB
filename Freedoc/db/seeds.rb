# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all
DocSpeciality.destroy_all


15.times do
  city = City.create!(    
    name: ["Paris", "Nantes","Lyon","Bordeaux","Rennes","Montpellier", "Sisteron", "Lille"].sample, 
    doctor_id: Doctor.pluck(:id).sample,
    patient_id: Patient.pluck(:id).sample,
    appointment_id: Appointment.pluck(:id).sample,
  )
end

15.times do
  doctor = Doctor.create!(    
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    specialty: ["Generalist", "Chirurgien","Dentist","Cardiologist","Radiologist","Nephrologist", "ORL", "Gynecologist"].sample, 
    zip_code: Faker::Address.zip_code,
    city_id: City.pluck(:id).sample,
  )
end

15.times do
  specialty = Specialty.create!(    
    specialty_name: ["Generalist", "Chirurgien","Dentist","Cardiologist","Radiologist","Nephrologist", "ORL", "Gynecologist"].sample, 
    doctor_id: Doctor.pluck(:id).sample,
  )
end

15.times do
  doc_speciality = DocSpeciality.create!(    
    doctor_id: Doctor.pluck(:id).sample,
    specialty_id: Specialty.pluck(:id).sample,
  )
end

15.times do
  patient = Patient.create!(    
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city_id: City.pluck(:id).sample,
  )
end

15.times do
  appointment = Appointment.create!(    
    date: Faker::Time.between(from: '2020-09-01', to: '2021-02-04'),
    doctor_id: Doctor.pluck(:id).sample,
    patient_id: Patient.pluck(:id).sample,
    city_id: City.pluck(:id).sample
  )
end

