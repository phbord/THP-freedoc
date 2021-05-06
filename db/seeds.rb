# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.destroy_all
Speciality.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
JoinTableDoctorSpeciality.destroy_all

spec = ['proctologue', 'dermathologue', 'urologue', 'généraliste', 'cardiologue', 'psychatre', 'gynecologue', 'vétérinaire', 'légiste', 'croque-morts']
spec.each do |spec_name|
    Speciality.create!(name: spec_name)
end

25.times do
    City.create!(
        name: Faker::Address.city,
        zip_code: Faker::Address.zip_code
    )
end

100.times do
    d = Doctor.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        city: City.all.sample
    )
    d.specialities << Speciality.all.sample

    Patient.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        city: City.all.sample
    )
end

200.times do
    doc = Doctor.all.sample
    pat = Patient.where("city_id = ?", "#{doc.city_id}").sample
    date = Faker::Date.in_date_period
    Appointment.create(
        date: date,
        city: doc.city,
        doctor: doc,
        patient: pat
    )
end