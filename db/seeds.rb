# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
100.times do |x|
  p = Person.create({name: "#{Faker::Name.name}", date_of_birth: "#{Faker::Date.birthday(15, 90)}", phone_number: "#{Faker::PhoneNumber.phone_number}" })
  Address.create({street: "#{Faker::Address.street_address}", city: "#{Faker::Address.city} ", zipcode: "#{Faker::Address.zip_code}", person_id: p.id})
  Profile.create({email_address: "#{Faker::Internet.free_email}", gender: "#{['Male', 'Female'].shuffle[0]}", age: "#{Faker::Number.number(2)}" , person_id: p.id})
  Vehicle.create({car_type: "#{Faker::Vehicle.manufacture}", color: "#{Faker::Color.color_name}" , person_id: p.id})
end

