# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version : _5.2.5_

* System dependencies :
  * gem `table_print`
  * gem `faker`

* Configuration

* Deployment instructions
  * `bundle i`
  * `rails db:migrate`
  * `rails db:seed`

* Database creation
  * rails generate model Doctor first_name:string last_name:string speciality:string zip_code: string
  * rails generate model Patient first_name:string last_name:string
  * rails generate model Appointment date:datetime
  * rails generate model City name:string zip_code: string
  * rails generate model Specialty name:string
  * rails generate model JoinTableDoctorSpecialty

* Database initialization
  * rails g migration AddIndexToAppointments
  * rails g migration AddCityIndexToDoctors
  * rails g migration AddCityIndexToPatients
  * rails g migration AddCityIndexToAppointments
  * rails g migration RemoveSpecialityFromDoctors
  * rails db:migrate
  * rails db:rollback

* How to run the test suite
  * d = Doctor.create
  * p = Patient.create
  * a = Appointment.create(doctor: d, patient: p)
  * tp Appointment.all
  * d.patients
  * p.doctors
  * tp Doctor.last
  * p.update(last_name: "JCVD")
  * p.last_name
  * paris = City.create(name: "Paris", zip_code: "75000")
  * d.city = paris
  * d.save
  * s3 = Speciality.create(name: "proctologue")
  * tp Speciality.all

* Services (job queues, cache servers, search engines, etc.)

* Seeds
  * rails db:seed

## Projet
Implémenter une application concurrente de _Doctolib_ avec Rails
### Models :
- Doctor
- Patient
- Appointment
- City
### Relations :
- appointment / doctor => n-1
- appointment / patient => n-1
- doctor / patient => n-n
- city / doctor, patient, appointment => n-1