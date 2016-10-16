# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Home.first_or_create

User.create( email: 'gafemoyano@gmail.com', password: 'gafemoyano', password_confirmation: 'gafemoyano')
User.create( email: 'sales@roseamor.com', password: 'roseamor2016', password_confirmation: 'roseamor2016')
User.create( email: 'sales1@roseamor.com', password: 'roseamor2016', password_confirmation: 'roseamor2016')
User.create( email: 'sales2@roseamor.com', password: 'roseamor2016', password_confirmation: 'roseamor2016')
User.create( email: 'natalia@roseamor.com', password: 'roseamor2016', password_confirmation: 'roseamor2016')
User.create( email: 'diego@roseamor.com', password: 'roseamor2016', password_confirmation: 'roseamor2016')
