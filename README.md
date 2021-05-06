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

* Models creation
  * `rails generate model Doctor first_name:string last_name:string speciality:string zip_code: string`
  * `rails generate model Patient first_name:string last_name:string`
  * `rails generate model Appointment date:datetime`
  * `rails generate model City name:string zip_code: string`
  * `rails generate model Specialty name:string`
  * `rails generate model JoinTableDoctorSpecialty`

* Database initialization
  * `rails g migration AddIndexToAppointments`
  * `rails g migration AddCityIndexToDoctors`
  * `rails g migration AddCityIndexToPatients`
  * `rails g migration AddCityIndexToAppointments`
  * `rails g migration RemoveSpecialityFromDoctors`
  * `rails db:migrate`
  * `rails db:rollback`

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

* Seeds
  * `rails db:seed`

* Tests

|ACTION|COMMANDE|
|:---|:---|
|Afficher la table des Rendez-vous|`tp Appointment.all`|
|Créer une ville|`City.create(name: "nom de la ville", zip_code: code postal)`|
|Créer une spécialité|`Speciality.create(name: "nom de la spécialité")`|
|Créer un nouveau praticien|`Doctor.create(first_name: "prénom", last_name: "nom de famille", city: City.find_by(name: nom de la ville))`|
|Ajouter une spécialité à un praticien|`d = Doctor.find(id du docteur) puis d.specialities << Speciality.find_by(name: nom_de_la_specialité)`|
|Créer un patient|`Patient.create(first_name: prénom du patient, last_name: nom du patient, city: City.find_by(name: nom de la ville))`|
|Créer un rendez-vous|`Appointment.create(date: YYYY-mm-DD HH:MM:SS, doctor: praticen_existant, patient: patient_existant)`|

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