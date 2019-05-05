# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Home.first_or_create

User.first_or_create( email: 'gafemoyano@gmail.com', password: 'gafemoyano', password_confirmation: 'gafemoyano')
User.first_or_create( email: 'sales@roseamor.com', password: 'roseamor2016', password_confirmation: 'roseamor2016')
User.first_or_create( email: 'sales1@roseamor.com', password: 'roseamor2016', password_confirmation: 'roseamor2016')
User.first_or_create( email: 'sales2@roseamor.com', password: 'roseamor2016', password_confirmation: 'roseamor2016')
User.first_or_create( email: 'natalia@roseamor.com', password: 'roseamor2016', password_confirmation: 'roseamor2016')
User.first_or_create( email: 'diego@roseamor.com', password: 'roseamor2016', password_confirmation: 'roseamor2016')

cc1 = ColorCategory.first_or_create(name: 'Solids',  order: 10)
cc2 = ColorCategory.first_or_create(name: 'Bicolors',  order: 20)
cc3 = ColorCategory.first_or_create(name: 'Metalized Finish	',  order: 30)
cc4 = ColorCategory.first_or_create(name: 'Glitter/Diamond Dust Finish (Available for all solids and bicolors)',  order: 40)
cc5 = ColorCategory.first_or_create(name: 'Pearl Collection	)',  order: 50)

Color.first_or_create(code: 'BLA-01', color_category: cc1 )
Color.first_or_create(code: 'BLA-02', color_category: cc1 )
Color.first_or_create(code: 'BLA-03', color_category: cc1 )
Color.first_or_create(code: 'BLA-04', color_category: cc1 )
Color.first_or_create(code: 'BLA-05', color_category: cc1 )
Color.first_or_create(code: 'BLA-06', color_category: cc1 )
Color.first_or_create(code: 'BLA-07', color_category: cc1 )
Color.first_or_create(code: 'BLA-08', color_category: cc1 )
Color.first_or_create(code: 'BLA-09', color_category: cc1 )
Color.first_or_create(code: 'BLA-10', color_category: cc1 )

Distributor.first_or_create(country_code: 'AU', name: 'WAFEX',	phone: '+61 8 9278 9804',	phone2: '+61 438 829 858',		mail: 'sales@wafex.com.au',		address: '4165 West Swan Road West Swan WA 6055')
Distributor.first_or_create(country_code: 'BE', name: 'Agora',	phone: '+61 8 9278 9804',	phone2: '+61 438 829 858',		mail: 'sales@wafex.com.au',		address: '4165 West Swan Road West Swan WA 6055')
Distributor.first_or_create(country_code: 'BE', name: 'Rosa Piú',	phone: '+61 8 9278 9804',	phone2: '+61 438 829 858',		mail: 'sales@wafex.com.au',		address: '4165 West Swan Road West Swan WA 6055')
