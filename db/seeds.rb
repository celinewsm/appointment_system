# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Doctor.destroy_all
Appoint.destroy_all

Doctor.create([{name: 'Dr. Strange', speciality: 'Magic' }, {name: 'Dr. Seuss', speciality: 'Hats'}])

User.create([{email:'admin@email.com', password: '12345678', password_confirmation: '12345678',  account: 'admin'}, {email:'patient@email.com', password: '12345678', password_confirmation: '12345678'}])

# Appoint.create([{doctor_id: doctor.first, user_id: '1', complaint:'Some complaints', speciality:'Magic', date: '20161005', time_slot: '1'}, {doctor_id: '2', user_id: '2', complaint:'Some complaints', speciality:'Hats', date: '20161005', time_slot: '7'}])
