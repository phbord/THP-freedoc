# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version : _5.2.5_

* System dependencies : table_print

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Projet
Implémenter une application concurrente de _Doctolib_ avec Rails
### Models :
- Doctor
- Patient
- Appointment
### Relations :
- appointment/doctor => n-1
- appointment/patient => n-1
- doctor/patient => n-n