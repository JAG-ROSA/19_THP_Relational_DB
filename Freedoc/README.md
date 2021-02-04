# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.7.1

* Project Description
Ce dossier contient les ébauches de BDD pour le développement d'une appli fictive "Freedoc"

Les models développés sont:
- un model Doctor, qui a comme attributs :
  un first_name, qui est un string
  un last_name, qui est un string
  un specialty, qui est un string
  un zip_code, qui est un string
- un model Patient, qui a comme attributs :
  un first_name, qui est un string
  un last_name, qui est un string
- un model Appointment, qui a comme attributs :
  un date, qui est un datetime

Une fois les attributs fixés, on s'attaque aux relations :

Un appointment ne peut avoir qu'un seul doctor, mais un doctor peut avoir plusieurs appointment.
Un appointment ne peut avoir qu'un seul patient, mais un patient peut avoir plusieurs appointment.
Un doctor peut avoir plusieurs patient, au travers des appointments, et vice versa.
